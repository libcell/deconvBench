##--------------------------------------------------------------------##
#                           Loading library
##--------------------------------------------------------------------##
import numpy as np
import scanpy   as sc
import scipy as sci
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import seaborn as sns
import autogenes as ag
from sklearn.svm import NuSVR
import pickle



##--------------------------------------------------------------------##
#                           Reading in the inputs
##--------------------------------------------------------------------##
#read single-cell data

#read 100 synthetic bulks generated by summing single cells
#the bulks are normalized to counts_per_cell_after=1e4
#proportions are only required for validation
adata =  sc.read_h5ad("scRNA.h5ad")

data_bulk_raw = pd.read_csv('Bulk_data.csv',delimiter=',', index_col=0)

##--------------------------------------------------------------------##
#                      Preprocessing single-cell data
##--------------------------------------------------------------------##
#normalizing and selecting 4000 hihgly variable genes for optimization
#we use log normalized data for selecting hihgly variable genes and visualization
adata_norm = sc.pp.normalize_per_cell(adata, counts_per_cell_after=1e4, copy=True) 


sc.pp.highly_variable_genes(adata_norm, flavor='cell_ranger',n_top_genes=4000)


adata_proc = adata_norm[:, adata_norm.var[adata_norm.var['highly_variable']==True].index]



###画PCA
sc.pp.pca(adata_norm, n_comps=30, use_highly_variable=True, svd_solver='arpack')





###画CEll cluster图
adata_norm.obs['cells'] = [x.split('_', 1)[0] for x in adata_norm.obs_names]

#filter cells in normalized data
adata_proc = adata_proc[adata_norm.obs_names]




#calculating the centroids of cell types
clusters = pd.Series.unique(adata_norm.obs['cells'])

sc_mean = pd.DataFrame(index=adata_proc.var_names, columns=clusters)

for cluster in clusters:
    cells = [x for x in adata_proc.obs_names if x.startswith(cluster)]
    sc_part = adata_proc[cells,:].X.T
    sc_mean[cluster] = pd.DataFrame(np.mean(sc_part,axis=1),index=adata_proc.var_names)
centroids_sc_hv = sc_mean


####
###
###AutoGeneS
ag.init(centroids_sc_hv.T)

ag.optimize(ngen=5000,seed=0,nfeatures=400,mode='fixed',offspring_size=100,verbose=False)

index = ag.select(index=0)

centroids_sc_pareto = centroids_sc_hv[index]

coef_nusvr = ag.deconvolve(data_bulk_raw.T, model='nusvr')
coef_nnls = ag.deconvolve(data_bulk_raw.T, model='nnls')

save1 = pd.DataFrame(coef_nusvr) 
save1.to_csv('/Users/touyasushishin/Desktop/Autogens_NNLS.csv',index=True,header=True) 
    
save2 = pd.DataFrame(coef_nusvr) 
save2.to_csv('/Users/touyasushishin/Desktop/Autogens_NuSVR.csv',index=True,header=True) 
    

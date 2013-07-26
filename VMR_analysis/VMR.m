%Load Infinium 450K default files
%#########################################################

load('Infinium_files.mat');

%########################################################
%Import methylation data

j1=load('GSE30870_vmr.csv');
j1=j1(2:485578,:);
%R=chr_index

%########################################################
%Regression

me_value=j1(me_index,:);

slope=mad_m(me_value);

%########################################################
%
clearvars -except slope dist_value me_value gene_value cpg_value pheno chr_index

[g_1,d_1,mm_1]=vmr_get_95(slope,dist_value);

%########################################################
%

[cluster,n]=get_cluster(d_1,g_1);

%#######################################################

[ar_1,clus_c1]=get_area(cluster,d_1,mm_1,n);

%######################################################
[AAREA,ck_1]=vmr_sort_area(ar_1,clus_c1,1);

%#####################################################
%
[HOWpr,GGENE,CCPG,DIFF,Sstart,CRR]=vmr_get_output(ck_1,g_1,cluster,chr_index,gene_value,cpg_value,dist_value);

%########################(##############################
%



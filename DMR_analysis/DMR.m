%Load Infinium 450K default files
%#########################################################

load('Infinium_files.mat');

%########################################################
%Import methylation data

j1=load('GSE30870_dmr.csv');
pheno=[1 1 0 0];
j1=j1(2:485578,:);
%R=chr_index

%########################################################
%Regression

me_value=j1(me_index,:);

slope=regress_m(me_value,pheno);

%########################################################
%
clearvars -except slope dist_value me_value gene_value cpg_value pheno chr_index

[g_1,g_2,d_1,d_2,mm_1,mm_2]=get_95(slope,dist_value);

%########################################################
%

[cluster,n]=get_cluster(d_1,g_1);

[cluster1,n1]=get_cluster(d_2,g_2);

%#######################################################

[ar_1,clus_c1]=get_area(cluster,d_1,mm_1,n);
[ar_2,clus_c2]=get_area(cluster1,d_2,mm_2,n1);

%######################################################
[ck_1]=sort_area(ar_1,clus_c1,1);
[ck_2]=sort_area(ar_2,clus_c2,0);

%#####################################################
%
[hwprob_1,ggene_1,cpg_1,diffd_1,start_1,chr_1]=get_output(ck_1,g_1,cluster,chr_index,gene_value,cpg_value,dist_value);

[hwprob,ggene,cpg,diffd,start,chr]=get_output(ck_2,g_2,cluster1,chr_index,gene_value,cpg_value,dist_value);

%########################(##############################
[AAREA,DIFF,CRR,Sstart,HOWpr,GGENE,CCPG]=get_output_2(ar_1,diffd_1,chr_1,start_1,hwprob_1,ggene_1,cpg_1,ar_2,diffd,chr,start,hwprob,ggene,cpg);

%#####################################################
[ar1_perm,ar2_perm]=get_permu(pheno,me_value,dist_value);

[p,q]=get_p(ar1_perm,ar2_perm,ar_1,ar_2);

function[ar_1orig1,ar_2orig2]=get_permu(a1,a2,a3)

nS=2;
ar_1orig1=zeros(nS,5000);
ar_2orig2=zeros(nS,5000);

for noPerm=1:nS
    clearvars -except slope a3 a2 gene_value cpg_value a1 chr_index noPerm ar_1orig1 ar_2orig2
    noPerm
    
    
    rng('shuffle');
    tt=randperm(length(a1));
    pheno_shuf=a1(tt);
    
    slope=regress_m(a2,pheno_shuf);
    
   

    [g_1,g_2,d_1,d_2,mm_1,mm_2]=get_95(slope,a3);
    
    [cluster,n]=get_cluster(d_1,g_1);

    [cluster1,n1]=get_cluster(d_2,g_2);
    
    [arr_1,clus_c1]=get_area(cluster,d_1,mm_1,n);
    
    [r2 c2]=size(arr_1);
    ar_1orig1(noPerm,1:c2)=arr_1;
    
    [arr_2,clus_c2]=get_area(cluster1,d_2,mm_2,n1);
    
    [r3 c3]=size(arr_2);
    ar_2orig2(noPerm,1:c3)=arr_2;
    
end

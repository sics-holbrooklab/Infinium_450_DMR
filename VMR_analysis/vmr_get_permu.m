function[ar_vmr]=vmr_get_permu(a1,a2)
nS=50;
ar_vmr=zeros(nS,5000);

for noPerm=1:nS
    noPerm


%########################################################
%
clearvars -except a2 ar_1 ar_vmr noPerm a1

sub1=find(a1(:,noPerm)>=0);

thresh1 =quantile(a1(sub1,noPerm),0.95);

g_1=find(a1(sub1,noPerm)>thresh1);

d_1=a2(g_1);

mm_1=a1(g_1);

%########################################################
%

[cluster,n]=get_cluster(d_1,g_1);

%#######################################################

[ar_1,clus_c1]=get_area(cluster,d_1,mm_1,n);

[r2 c2]=size(ar_1);
ar_vmr(noPerm,1:c2)=ar_1;

end


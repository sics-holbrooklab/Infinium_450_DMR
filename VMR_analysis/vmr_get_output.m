function[hwprob_v,ggene_v,ccpg_v,diffd_v,start_v,chr_v]=vmr_get_output(ff,gg,hh,ii,gene_v,cpg_v,dist_v)

%Initialize
%#########################################################

ggene_v=cell(length(ff),500);
ccpg_v=cell(length(ff),500);

%#########################################################


for i=1:length(ff)
    %i

    j=find(hh==ff(i));
    j1=gg(j);
    k1=j1;
    j1=j1';
    [rr1 cc1]=size(j1);
    hwprob_v(i)=cc1;
  
    ggene_v(i,1:cc1)=gene_v(j1(1:cc1),1)';
  
    ccpg_v(i,1:cc1)=cpg_v(j1(1:cc1))';
    
    diffd_v(i)=dist_v(j1(cc1))-dist_v(j1(1));
    send(i)=dist_v(j1(cc1));
    start_v(i)=dist_v(j1(1));
    
    jj1=j1';
    for k=1:24
        
        jj1=jj1-ii(k);
        
        if jj1<=0
            chr_v(i)=k;
            break
        end
    end
end

hwprob_v=hwprob_v';
diffd_v=diffd_v';

start_v=start_v';
chr_v=chr_v';


function[cluster4,real_cl_prb,b]=perm_get_cluster(aa)

c=1;
cluster4(1)=1;
for i=2:length(aa)
 
    
        if aa(i)-aa(i-1)<=1000 & aa(i)-aa(i-1)>0 
            cluster4(i)=cluster4(i-1);
        else
            c=c+1;
            cluster4(i)=c;
        end

end

vv=0;
for i=1:max(cluster4)
    
    
    b(i)=length(find(cluster4==i));
    
        vv=vv+1;
   
        real_cl_prb(vv)=b(i);
       
    
end
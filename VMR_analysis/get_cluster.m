function[cluster,n]=get_cluster(aa,bb)

c=1;
cluster(1)=1;
for i=2:length(aa)
 
    
        if aa(i)-aa(i-1)<=1000 & aa(i)-aa(i-1)>0 & bb(i)-bb(i-1)==1
            cluster(i)=cluster(i-1);
        else
            c=c+1;
            cluster(i)=c;
        end

end

cluster=cluster';

n=max(unique(cluster));

for i=1:n
    
    b(i)=length(find(cluster==i));
    mv=find(cluster==i);
    jk(i)=aa(max(mv))-aa(mv(1));
end

function[ar_1,clus_c1]=get_area(cc,dd,ee,nn)

gg1=0;
 
for i=1:nn
    
    bv1=find(cc==i);
    if length(bv1)>1
        gg1=gg1+1;
        ar_1(gg1) =trapz(dd(bv1),ee(bv1));
        clus_c1(gg1)=i;
    end
end

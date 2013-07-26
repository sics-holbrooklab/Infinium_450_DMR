
function [slope] =regress_m(a1,a2)

[rf cf]=size(a1);
slope=NaN(rf,1);

for i=1:rf
    if sum(~isnan(a1(i,:)))>=3
        
         h=find(~isnan(a1(i,:)));
        
         p=polyfit(a2(h),a1(i,h),1);
     
         slope(i)=p(1);
    else
        slope(i)=nan;
    end
end
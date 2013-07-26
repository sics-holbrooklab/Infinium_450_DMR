
function [slope] =mad_m(a1)

[rf cf]=size(a1);
slope=NaN(rf,1);

for i=1:rf
    if sum(~isnan(a1(i,:)))>=3
        
         h=find(~isnan(a1(i,:)));
         
         slope(i)=mad(a1(i,h),1);
    else
        slope(i)=nan;
    end
end
function[ck_1]=sort_area(ff,gg,p)

if p==1
    j='descend';
else
    j='ascend';
end

[v1 v2]=sort(ff,j);
ck_1=gg(v2);
ck_1=ck_1;
function[v1,ck_1]=vmr_sort_area(ff,gg,p)

if p==1
    j='descend';
else
    j='ascend';
end

[v1 v2]=sort(ff,j);
v1=v1';
ck_1=gg(v2);
ck_1=ck_1;
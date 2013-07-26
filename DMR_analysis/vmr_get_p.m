function[yy2,yy5]=vmr_get_p(a1,a3)

[r1 c1]=size(a1);

bn1=[];


for i=1:r1
    
    bn1=vertcat(bn1,nonzeros(a1(i,:)));
   
end

fbn=bn1;

fbn_orig_1=sort(a3,'descend');


[f1 f2]=size(fbn_orig_1);
[f3 f4]=size(fbn);

for i=1:f1
        yy1(i)=length(find(fbn_orig_1(i,1)<fbn));
end

yy2=(yy1)/(f3);

yy2=yy2';

yy3=mafdr(yy2,'BHFDR','true');

[yy4 yy5]=mafdr(yy2,'lambda',[0.00001:0.001:0.9],'showplot','true');


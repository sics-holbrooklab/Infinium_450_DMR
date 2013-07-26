function[yy2,yy5]=get_p(a1,a2,a3,a4)

[r1 c1]=size(a1);

bn1=[];
bn2=[];

for i=1:r1
    
    bn1=vertcat(bn1,nonzeros(a1(i,:)));
    bn2=vertcat(bn2,nonzeros(a2(i,:)));
end


fbn=vertcat(bn1,abs(bn2));

fbn_orig=vertcat(a3',abs(a4)');

fbn_orig_1=sort(fbn_orig,'descend');


[f1 f2]=size(fbn_orig_1);
[f3 f4]=size(fbn);

for i=1:f1
        yy1(i)=length(find(fbn_orig_1(i,1)<fbn));
end

yy2=(yy1)/(f3);

yy2=yy2';

yy3=mafdr(yy2,'BHFDR','true');

[yy4 yy5]=mafdr(yy2,'lambda',[0.00001:0.001:0.9],'showplot','true');


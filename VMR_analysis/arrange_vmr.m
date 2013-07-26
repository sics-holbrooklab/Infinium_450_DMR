function[final_des1]=arrange_vmr(a1,a2,a3,a4)

pp3=[];

for i=1:max(a1)
    i
    pp=find(a1==i);
    pp=pp';
    
    
   
    for kkk=1:length(pp)
       kkk
       pp0=find(a2==pp(kkk));
        
       [rr1 rr2]=size(pp0);
       pp2=reshape(pp0,rr1*rr2,1);
       pp3=vertcat(pp3,pp2);
    end

   
end

final_des=zeros(485512,100);

for i=1:485512

    final_des(pp3(i),:)=a3(i,:);
   
end

final_des = final_des+nanmean(log(a4));
final_des1=2.718.^final_des;

function[gf]=get_simu(a1,a2,a3)

gf=zeros(485512,100);

for mm=1:100
    mm
    f=[];
    for i=1:max(a3)
    i
 
    le(i)=length(find(a3==i));

    rhop=a1;
  
    sigma=a2;
   
    V=[0:1:i-1];
    j=toeplitz(V);
    R=sigma*rhop.^j;

    z=1*randn(le(i),i)*R;
  
    z1=z';
    xyz1=reshape(z1,i*le(i),1);
   
    f=vertcat(f,xyz1);
    
    
   

    end
   gf(:,mm)=f;
end

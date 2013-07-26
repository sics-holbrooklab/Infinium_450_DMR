function[coef_ave,stddev_ave_1]=get_ave_rho(a1,a2,a3);

id=find(a3>=50);

coef_ave=mean(nonzeros(a1(id)));

stddev_ave=mean(nonzeros(a2(id)));

stddev_ave_1=sqrt(stddev_ave);

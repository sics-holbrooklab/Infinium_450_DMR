function[g_1,d_1,mm_1]=vmr_get_95(y,x)


sub1=find(y>0);

thresh1=quantile(y(sub1),0.95);

g_1=find(y>thresh1);

d_1=x(g_1);

mm_1=y(g_1);

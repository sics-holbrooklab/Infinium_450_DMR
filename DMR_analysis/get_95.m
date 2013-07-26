function[g_1,g_2,d_1,d_2,mm_1,mm_2]=get_95(y,x)


sub1=find(y>0);

sub2=find(y<0);

thresh1=quantile(y(sub1),0.95);

thresh2=quantile(y(sub2),0.05);

g_1=find(y>thresh1);

g_2=find(y<thresh2);

d_1=x(g_1);

d_2=x(g_2);

mm_1=y(g_1);

mm_2=y(g_2);
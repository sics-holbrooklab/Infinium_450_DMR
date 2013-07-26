a1=importdata('coef.csv');
aa1=a1.data;

a2=importdata('stddev.csv');
aa2=a2.data;

[rho, sigma]=get_ave_rho(aa1,aa2,b);

[simu_data]=get_simu(rho,sigma,cluster_probe);

[final_simu]=arrange_vmr(cluster_probe,cluster_vmr(2:485513),simu_data,slope);

[ar_vmr]=vmr_get_permu(final_simu,dist_value);

[p,q]=vmr_get_p(ar_vmr,ar_1);

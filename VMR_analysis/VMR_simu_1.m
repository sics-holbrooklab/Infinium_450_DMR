[cluster_vmr,cluster_probe,b]=perm_get_cluster(dist_value);

tt_vmr=log(slope)-nanmean(log(slope));


cluster_vmr=vertcat(1,cluster_vmr');

tt_vmr=vertcat(1,tt_vmr);

dlmwrite('cluster_vmr.csv',cluster_vmr,'precision',100);
dlmwrite('tt_vmr.csv',tt_vmr);

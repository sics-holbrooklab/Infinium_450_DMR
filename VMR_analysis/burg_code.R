adj_mad=read.csv('tt_vmr.csv')
chr_struct=read.csv('cluster_vmr.csv')

a=max(chr_struct)
coef=matrix(nrow=a,ncol=1)
stddev=matrix(nrow=a,ncol=1)

adj_mad=as.matrix(adj_mad)

for (i in 1:a){
  i
   nm=rfind(chr_struct==i)
   if (length(nm)<=2 | length(rfind(adj_mad[nm]!="Na"))<=2 | all(adj_mad[nm]=="Na"))
   {
  coef[i]=0
   stddev[i]=0}
   else{
   j=ar(as.numeric(adj_mad[nm]),FALSE,method="burg",1,na.action = na.exclude)
    coef[i]=j$ar
    stddev[i]=j$var.pred
    }
    }
    
write.csv(coef,'coef.csv')

write.csv(stddev,'stddev.csv')
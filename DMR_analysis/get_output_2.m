function[AAREA,DIFF,CRR,Sstart,HOWpr,GGENE,CCPG]=get_output_2(a1,b1,c1,d1,e1,f1,g1,a,b,c,d,e,f,g)


[RR1 YR1]=sort(a1,'descend');
[RR2 YR2]=sort(a,'ascend');

AAREA=vertcat(RR1',RR2');

DIFF=vertcat(b1',b');
CRR=vertcat(c1',c');
CCPG=vertcat(g1(:,:),g(:,:));
Sstart=vertcat(d1',d');

HOWpr=vertcat(e1',e');
GGENE=vertcat(f1(:,:),f(:,:));

[vvv1 vvv2]=sort(abs(AAREA),'descend');

AAREA=AAREA(vvv2);
DIFF=DIFF(vvv2);
CRR=CRR(vvv2);
CCPG=CCPG(vvv2,:);

Sstart=Sstart(vvv2);

HOWpr=HOWpr(vvv2);
GGENE=GGENE(vvv2,:);
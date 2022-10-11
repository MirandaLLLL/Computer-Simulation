nDays=90;
dt=1/365.0;
T=nDays*dt;   %����ʱ��
S0=100; %�ڳ��ɼ�
K=85;  %�ö���
r=0.3; %�޷�������
sigma=0.3;  %������
miu=0.1;%������
expTerm=r*dt;
stddev=sigma*sqrt(dt);
nTrials=100000;
value=0;
sum=0;
for k=1:100
for j=1:nTrials
       n=randn(1,nDays);
       S=S0;
       for i=1:nDays
           ep=n(i);
           dW=sqrt(dt)*ep;
           dS=(miu*dt+sigma*dW)*S;
           S=S+dS;       %��n��Ĺ�Ʊ�۸�
       end
       S90(j)=S;  %��j������ ��90��ļ۸�
       value=value+max(K-S,0);
end
value=value/nTrials;
Price=exp(-r*T)*value;
sum=sum+Price;
end
P=sum/100

hist(S90,0:0.5:200);

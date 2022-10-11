nDays=90;
dt=1/365.0;
T=nDays*dt;   %到期时间
S0=100; %期初股价
K=85;  %敲定价
r=0.3; %无风险利率
sigma=0.3;  %波动率
miu=0.1;%增长率
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
           S=S+dS;       %第n天的股票价格
       end
       S90(j)=S;  %第j次试验 第90天的价格
       value=value+max(K-S,0);
end
value=value/nTrials;
Price=exp(-r*T)*value;
sum=sum+Price;
end
P=sum/100

hist(S90,0:0.5:200);

n=5000;
x=zeros(1,n);
count=0;
for i=1:n
    u=unifrnd(0,1);
    tmp=-log(1 - u)/log(3060513257434037/1125899906842624);%是指数分布的概率分布函数的反函数，取lambda=1；
    if tmp>0.1&&tmp<10
        count=count+1;
        x(count)=tmp;
    end
end
histogram(x,60)
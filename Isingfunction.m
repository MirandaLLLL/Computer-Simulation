function D=Isingfunction(T)     %T是温度
nTrials=100000;
startup=100000;
d=zeros(1,nTrials);
beta=1/T;
N=8;
M=0; %对M 进行初始化0；
s=2*round(rand(N))-1;  %随机产生0或1状态Z在一个N*N的矩阵中；
Es=0;
for i=1:N
    for j=1:N
        if i==1&&(j==1)
            Es=Es+s(i,j)*(s(i,j+1)+s(i+1,j)); %
        end
        if i==N&&(j==N)
            Es=Es+s(i,j)*(s(i,j-1)+s(i-1,j));
        end
        if i==1&&(j>1)&&(j<N)
            Es=Es+s(i,j)*(s(i,j+1)+s(i+1,j)+s(i,j-1));
        end
        if j==1&&(i>1)&&(i<N)
            Es=Es+s(i,j)*(s(i,j+1)+s(i+1,j)+s(i-1,j));
        end
        if i==1&&(j==N)
            Es=Es+s(i,j)*(s(i,j-1)+s(i+1,j));
        end
        if j==1&&(i==N)
            Es=Es+s(i,j)*(s(i,j+1)+s(i-1,j));
        end
        if i<N&&(j<N)&&(i>1)&&(j>1)
            Es=Es+s(i,j)*(s(i-1,j)+s(i+1,j)+s(i,j-1)+s(i,j+1));
        end
    end
end
Es=-Es;%计算s的能量
for t=1:(startup+nTrials)
    m=fix(1+N*rand);  %1-N随机取整——选择反转的自旋行坐标
    n=fix(1+N*rand);  %1-N随机取整——选择反转的自旋列坐标
    y=s;              %将s的状态附给y；
    y(m,n)=-s(m,n);       %改变反转的自旋坐标的状态；
    Ey=0;
    for i=1:N
        for j=1:N
        if i==1&&(j==1)
            Ey=Ey+y(i,j)*(y(i,j+1)+y(i+1,j));
        end
        if i==N&&(j==N)
            Ey=Ey+y(i,j)*(y(i,j-1)+y(i-1,j));
        end
        if i==1&&(j>1)&&(j<N)
            Ey=Ey+y(i,j)*(y(i,j+1)+y(i+1,j)+y(i,j-1));
        end
        if j==1&&(i>1)&&(i<N)
            Ey=Ey+y(i,j)*(y(i,j+1)+y(i+1,j)+y(i-1,j));
        end
        if i==1&&(j==N)
            Ey=Ey+y(i,j)*(y(i,j-1)+y(i+1,j));
        end
        if j==1&&(i==N)
            Ey=Ey+y(i,j)*(y(i,j+1)+y(i-1,j));
        end
        if i<N&&(j<N)&&(i>1)&&(j>1)
            Ey=Ey+y(i,j)*(y(i-1,j)+y(i+1,j)+y(i,j-1)+y(i,j+1));
        end
        end
    end
    Ey=-Ey;%计算状态y的能量
    h=min(1,exp(-beta*(Ey-Es)));               %计算接受概率；
    if rand<h     
        s=y;               %状态s更新为y；
        Es=Ey;             %状态s的能量也更新为状态y的能量；
    end
    Ms=0;
    if t>startup
        for i=1:N
            for j=1:N
                Ms=Ms+s(i,j);    
            end
        end                       %计算状态s的磁矩
        M=M+Ms;                   %不同温度下的磁矩量
        d(t-startup)=Ms;
    end
end
x=-N*N:1:N*N;
histogram(d,x)
    M = (M /nTrials)/(N*N);        %求每个自旋的平均磁矩
  D = sum(d.^2);
end
cities=cityXY;
cityNum=101;%the total number of cities;
maxGEN=1000; %进化代数
popSize=2000; % 遗传算法种群大小
Pc=0.75; %交叉概率（需调整）
Pm=0.2; %变异概率（需调整）
prob=0.05;%选择概率（需调整）
length=zeros(1,popSize);
fitness=zeros(1,popSize);
pop=zeros(popSize, cityNum);
for i=1:popSize
    pop(i,:) = randperm(cityNum); 
end                                    %编码生成初始种群

for i=1:popSize
   length(1,i)=distance(pop,cityXY,cityNum,i);  %每一个种群的路径和
   fitness(1,i)=power(length(1,i),-20);         %每一个种群的适应度综合
end                       

minLength=length(1,1)
sequence=pop(1,:);
tourminpath=zeros(1,cityNum);

for i=2:popSize
    if(length(1,i)<minLength)
        minLength=length(1,i);
        sequence=pop(i,:);
    end
end
GEN=0;
while GEN<maxGEN
    popt=pop;
    [As,num]=sort(length);
    for i=1:popSize
        pop(i,:)=popt(num(1,i),:);
    end
    sumF=0;
    for i=1:popSize
        sumF=sumF+fitness(1,i);
    end
    pF=zeros(1,popSize);
    t=round(popSize*prob)+1;
    c=round(popSize*Pc)+1;
    for i=1:popSize
        pF(1,i)=fitness(1,i)/sumF;
    end
    for i=t:t+c
        pop=crossover(pop,popSize,cityNum,i);        %进行交叉互换；
    end
    for i=t+c+1:popSize
        pop=mutate(pop,cityNum,i);                  %进行变异；
    end
                                                      %形成子代pop
   for i=1:popSize
   length(1,i)=distance(pop,cities,cityNum,i);
   fitness(1,i)=power(length(1,i),-20); 
   end                                                  %计算子代距离和适合度
   
   for i=1:popSize
       if length(1,i)<minLength
          minLength=length(1,i)
          sequence=pop(i,:);
       end
   end 
    GEN=GEN+1;
 end
x=zeros(1,cityNum);
y=zeros(1,cityNum);
for i=1:cityNum
    x(1,i)=cities(1,sequence(1,i));
    y(1,i)=cities(2,sequence(1,i));
end
plot(x,y)
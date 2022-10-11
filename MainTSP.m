cities=cityXY;
cityNum=101;%the total number of cities;
maxGEN=1000; %��������
popSize=2000; % �Ŵ��㷨��Ⱥ��С
Pc=0.75; %������ʣ��������
Pm=0.2; %������ʣ��������
prob=0.05;%ѡ����ʣ��������
length=zeros(1,popSize);
fitness=zeros(1,popSize);
pop=zeros(popSize, cityNum);
for i=1:popSize
    pop(i,:) = randperm(cityNum); 
end                                    %�������ɳ�ʼ��Ⱥ

for i=1:popSize
   length(1,i)=distance(pop,cityXY,cityNum,i);  %ÿһ����Ⱥ��·����
   fitness(1,i)=power(length(1,i),-20);         %ÿһ����Ⱥ����Ӧ���ۺ�
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
        pop=crossover(pop,popSize,cityNum,i);        %���н��滥����
    end
    for i=t+c+1:popSize
        pop=mutate(pop,cityNum,i);                  %���б��죻
    end
                                                      %�γ��Ӵ�pop
   for i=1:popSize
   length(1,i)=distance(pop,cities,cityNum,i);
   fitness(1,i)=power(length(1,i),-20); 
   end                                                  %�����Ӵ�������ʺ϶�
   
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
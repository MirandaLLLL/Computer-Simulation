function D=Isingfunction(T)     %T���¶�
nTrials=100000;
startup=100000;
d=zeros(1,nTrials);
beta=1/T;
N=8;
M=0; %��M ���г�ʼ��0��
s=2*round(rand(N))-1;  %�������0��1״̬Z��һ��N*N�ľ����У�
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
Es=-Es;%����s������
for t=1:(startup+nTrials)
    m=fix(1+N*rand);  %1-N���ȡ������ѡ��ת������������
    n=fix(1+N*rand);  %1-N���ȡ������ѡ��ת������������
    y=s;              %��s��״̬����y��
    y(m,n)=-s(m,n);       %�ı䷴ת�����������״̬��
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
    Ey=-Ey;%����״̬y������
    h=min(1,exp(-beta*(Ey-Es)));               %������ܸ��ʣ�
    if rand<h     
        s=y;               %״̬s����Ϊy��
        Es=Ey;             %״̬s������Ҳ����Ϊ״̬y��������
    end
    Ms=0;
    if t>startup
        for i=1:N
            for j=1:N
                Ms=Ms+s(i,j);    
            end
        end                       %����״̬s�Ĵž�
        M=M+Ms;                   %��ͬ�¶��µĴž���
        d(t-startup)=Ms;
    end
end
x=-N*N:1:N*N;
histogram(d,x)
    M = (M /nTrials)/(N*N);        %��ÿ��������ƽ���ž�
  D = sum(d.^2);
end
m=csvread('C:\Users\admin\Desktop\iris.csv');  %��ȡcsv�ļ������ݣ����ɾ���m
[~,idx]=sort(rand(150,1));
model=m(idx(1:90),:);%���ѡȡ90����ģ��ѵ��
test=m(idx(91:150),:);%ʣ���60��������Ԥ��
count1=0;%������1�ĸ���
count2=0;%������2�ĸ���
count3=0;%������3�ĸ���
for i=1:1:90         %��ģ�������и����������ܸ���
    if model(i,5)==1
            count1=count1+1;
    end
    if model(i,5)==2
            count2=count2+1;
    end
    if model(i,5)==3
            count3=count3+1;
    end
end
hbc1=zeros(6,5);%��������Ϊ1�Ĳ�ͬ�黨�곤������������:4.3-4.8��1���飻4.9-5.4��2�顯��5.5-6��3���飻6.1-6.6 ��4���飻6.7-7.2 ��5���飻7.3-7.9��6����
hbc2=zeros(6,1);%��������Ϊ2�Ĳ�ͬ�黨�곤������������
hbc3=zeros(6,1);%��������Ϊ3�Ĳ�ͬ�黨�곤������������
hbk1=zeros(6,1);%��������Ϊ1�Ĳ�ͬ�黨��������������:2-2.3��1���飻2.4-2.7��2�顯��2.8-3.1��3���飻3.2-3.5 ��4���飻3.6-3.9 ��5���飻4-4.4��6����
hbk2=zeros(6,1);%��������Ϊ2�Ĳ�ͬ�黨��������������
hbk3=zeros(6,1);%��������Ϊ3�Ĳ�ͬ�黨��������������
hec1=zeros(5,1);%��������Ϊ1�Ĳ�ͬ�黨�곤������������:1-1.9��1���飻2-2.9��2�顯��3-3.9��3���飻4-4.9 ��4���飻5-5.9 ��5����
hec2=zeros(5,1);%��������Ϊ2�Ĳ�ͬ�黨�೤������������
hec3=zeros(5,1);%��������Ϊ3�Ĳ�ͬ�黨�೤������������
hek1=zeros(6,1);%��������Ϊ1�Ĳ�ͬ�黨�곤������������:0.1-0.4��1���飻0.5-0.8��2�顯��0.9-1.2��3���飻1.3-1.6 ��4���飻1.7-2 ��5���飻2.1-2.5��6����
hek2=zeros(6,1);%��������Ϊ2�Ĳ�ͬ�黨��������������
hek3=zeros(6,1);%��������Ϊ3�Ĳ�ͬ�黨��������������
for i=1:1:90
    switch model(i,5)%�����������µĸ������Ļ��곤�ĸ�����
        case 1   
            if model(i,1)>=4.3 && model(i,1)<=4.8
                hbc1(1,1)=hbc1(1,1)+1;
            end
            if model(i,1)>=4.9 && model(i,1)<=5.4
                    hbc1(2,1)=hbc1(2,1)+1;
            end
            if model(i,1)>=5.5 && model(i,1)<=6
                    hbc1(3,1)=hbc1(3,1)+1;
            end
            if model(i,1)>=6.1 && model(i,1)<=6.6
                    hbc1(4,1)=hbc1(4,1)+1;
            end
            if model(i,1)>=6.7 && model(i,1)<=7.2
                    hbc1(45,1)=hbc1(5,1)+1;
            end
            if model(i,1)>=7.3 && model(i,1)<=7.9
                    hbc1(6,1)=hbc1(6,1)+1;
            end
        case 2
           if model(i,1)>=4.3 && model(i,1)<=4.8
                hbc2(1,1)=hbc2(1,1)+1;
            end
            if model(i,1)>=4.9 && model(i,1)<=5.4
                    hbc2(2,1)=hbc2(2,1)+1;
            end
            if model(i,1)>=5.5 && model(i,1)<=6
                    hbc2(3,1)=hbc2(3,1)+1;
            end
            if model(i,1)>=6.1 && model(i,1)<=6.6
                    hbc2(4,1)=hbc2(4,1)+1;
            end
            if model(i,1)>=6.7 && model(i,1)<=7.2
                    hbc2(5,1)=hbc2(5,1)+1;
            end
            if model(i,1)>=7.3 && model(i,1)<=7.9
                    hbc2(6,1)=hbc2(6,1)+1;
            end
        case 3
            if model(i,1)>=4.3 && model(i,1)<=4.8
                hbc3(1,1)=hbc3(1,1)+1;
            end
            if model(i,1)>=4.9 && model(i,1)<=5.4
                    hbc3(2,1)=hbc3(2,1)+1;
            end
            if model(i,1)>=5.5 && model(i,1)<=6
                    hbc3(3,1)=hbc3(3,1)+1;
            end
            if model(i,1)>=6.1 && model(i,1)<=6.6
                    hbc3(4,1)=hbc3(4,1)+1;
            end
            if model(i,1)>=6.7 && model(i,1)<=7.2
                    hbc3(5,1)=hbc3(5,1)+1;
            end
            if model(i,1)>=7.3 && model(i,1)<=7.9
                    hbc3(6,1)=hbc3(6,1)+1;
            end
    end
end
for i=1:1:90
    switch model(i,5)%�����������µĸ������Ļ����ĸ�����
        case 1
            if model(i,2)>=2 && model(i,2)<=2.3
                hbk1(1,1)=hbk1(1,1)+1;
            end
            if model(i,2)>=2.4 && model(i,2)<=2.7
                    hbk1(2,1)=hbk1(2,1)+1;
            end
            if model(i,2)>=2.8 && model(i,2)<=3.1
                    hbk1(3,1)=hbk1(3,1)+1;
            end
            if model(i,2)>=3.2 && model(i,2)<=3.5
                    hbk1(4,1)=hbk1(4,1)+1;
            end
            if model(i,2)>=3.6 && model(i,2)<=3.9
                    hbk1(5,1)=hbk1(5,1)+1;
            end
            if model(i,2)>=4 && model(i,2)<=4.4
                    hbk1(6,1)=hbk1(6,1)+1;
            end
        case 2
          if model(i,2)>=2 && model(i,2)<=2.3
                hbk2(1,1)=hbk2(1,1)+1;
            end
            if model(i,2)>=2.4 && model(i,2)<=2.7
                    hbk2(2,1)=hbk2(2,1)+1;
            end
            if model(i,2)>=2.8 && model(i,2)<=3.1
                    hbk2(3,1)=hbk2(3,1)+1;
            end
            if model(i,2)>=3.2 && model(i,2)<=3.5
                    hbk2(4,1)=hbk2(4,1)+1;
            end
            if model(i,2)>=3.6 && model(i,2)<=3.9
                    hbk2(5,1)=hbk2(5,1)+1;
            end
            if model(i,2)>=4 && model(i,2)<=4.4
                    hbk2(6,1)=hbk2(6,1)+1;
            end
        case 3
           if model(i,2)>=2 && model(i,2)<=2.3
                hbk3(1,1)=hbk3(1,1)+1;
            end
            if model(i,2)>=2.4 && model(i,2)<=2.7
                    hbk3(2,1)=hbk3(2,1)+1;
            end
            if model(i,2)>=2.8 && model(i,2)<=3.1
                    hbk3(3,1)=hbk3(3,1)+1;
            end
            if model(i,2)>=3.2 && model(i,2)<=3.5
                    hbk3(4,1)=hbk3(4,1)+1;
            end
            if model(i,2)>=3.6 && model(i,2)<=3.9
                    hbk3(5,1)=hbk3(5,1)+1;
            end
            if model(i,2)>=4 && model(i,2)<=4.4
                    hbk3(6,1)=hbk3(6,1)+1;
            end
    end
end
for i=1:1:90%�����������µĸ������Ļ��೤�ĸ�����
    switch model(i,5)
        case 1
            if model(i,3)>=1 && model(i,3)<=1.9
                hec1(1,1)=hec1(1,1)+1;
            end
            if model(i,3)>=2 && model(i,3)<=2.9
                    hec1(2,1)=hec1(2,1)+1;
            end
            if model(i,3)>=3 && model(i,3)<=3.9
                    hec1(3,1)=hec1(3,1)+1;
            end
            if model(i,3)>=4 && model(i,3)<=4.9
                    hec1(4,1)=hec1(4,1)+1;
            end
            if model(i,3)>=5 && model(i,3)<=5.9
                    hec1(5,1)=hec1(5,1)+1;
            end
        case 2
          if model(i,3)>=1 && model(i,3)<=1.9
                hec2(1,1)=hec2(1,1)+1;
            end
            if model(i,3)>=2 && model(i,3)<=2.9
                    hec2(2,1)=hec2(2,1)+1;
            end
            if model(i,3)>=3 && model(i,3)<=3.9
                    hec2(3,1)=hec2(3,1)+1;
            end
            if model(i,3)>=4 && model(i,3)<=4.9
                    hec2(4,1)=hec2(4,1)+1;
            end
            if model(i,3)>=5 && model(i,3)<=5.9
                    hec2(5,1)=hec2(5,1)+1;
            end
        case 3
            if model(i,3)>=1 && model(i,3)<=1.9
                hec3(1,1)=hec3(1,1)+1;
            end
            if model(i,3)>=2 && model(i,3)<=2.9
                    hec3(2,1)=hec3(2,1)+1;
            end
            if model(i,3)>=3 && model(i,3)<=3.9
                    hec3(3,1)=hec3(3,1)+1;
            end
            if model(i,3)>=4 && model(i,3)<=4.9
                    hec3(4,1)=hec3(4,1)+1;
            end
            if model(i,3)>=5 && model(i,3)<=5.9
                    hec3(5,1)=hec3(5,1)+1;
            end
    end
end
for i=1:1:90%�����������µĸ������Ļ����ĸ�����
    switch model(i,5)
        case 1
            if model(i,4)>=0.1 && model(i,4)<=0.4
                hek1(1,1)=hek1(1,1)+1;
            end
            if model(i,4)>=0.5 && model(i,4)<=0.8
                    hek1(2,1)=hek1(2,1)+1;
            end
            if model(i,4)>=0.9 && model(i,4)<=1.2
                    hek1(3,1)=hek1(3,1)+1;
            end
            if model(i,4)>=1.3 && model(i,4)<=1.6
                    hek1(4,1)=hek1(4,1)+1;
            end
            if model(i,4)>=1.7 && model(i,4)<=2
                    hek1(5,1)=hek1(5,1)+1;
            end
            if model(i,4)>=2 && model(i,4)<=2.4
                    hek1(6,1)=hek1(6,1)+1;
            end
        case 2
            if model(i,4)>=0.1 && model(i,4)<=0.4
                hek2(1,1)=hek2(1,1)+1;
            end
            if model(i,4)>=0.5 && model(i,4)<=0.8
                    hek2(2,1)=hek2(2,1)+1;
            end
            if model(i,4)>=0.9 && model(i,4)<=1.2
                    hek2(3,1)=hek2(3,1)+1;
            end
            if model(i,4)>=1.3 && model(i,4)<=1.6
                    hek2(4,1)=hek2(4,1)+1;
            end
            if model(i,4)>=1.7 && model(i,4)<=2
                    hek2(5,1)=hek2(5,1)+1;
            end
            if model(i,4)>=2 && model(i,4)<=2.4
                    hek2(6,1)=hek2(6,1)+1;
            end
        case 3
           if model(i,4)>=0.1 && model(i,4)<=0.4
                hek3(1,1)=hek3(1,1)+1;
            end
            if model(i,4)>=0.5 && model(i,4)<=0.8
                    hek3(2,1)=hek3(2,1)+1;
            end
            if model(i,4)>=0.9 && model(i,4)<=1.2
                    hek3(3,1)=hek3(3,1)+1;
            end
            if model(i,4)>=1.3 && model(i,4)<=1.6
                    hek3(4,1)=hek3(4,1)+1;
            end
            if model(i,4)>=1.7 && model(i,4)<=2
                    hek3(5,1)=hek3(5,1)+1;
            end
            if model(i,4)>=2 && model(i,4)<=2.4
                    hek3(6,1)=hek3(6,1)+1;
            end
    end
end
right=0;%����������ȷ�ĸ�����
hbct=0;%��¼�������ݵĻ��곤�����ĸ����
hbkt=0;%��¼�������ݵĻ���������ĸ����
hect=0;%��¼�������ݵĻ��೤�����ĸ����
hekt=0;%��¼�������ݵĻ���������ĸ����
p=zeros(1,3);%��¼����type�ĺ�����ʣ�
for j=1:1:60%�жϲ������ݵĻ��곤����������೤�������ֱ������ĸ����
    x=0;
     if test(j,1)>=4.3 && test(j,1)<=4.8
           hbct=1;
     end
     if test(j,1)>=4.9 && test(j,1)<=5.42
           hbct=2;
     end
     if test(j,1)>=5.5 && test(j,1)<=6
           hbct=3;
     end
     if test(j,1)>=6.1 && test(j,1)<=6.6
           hbct=4;
     end
     if test(j,1)>=6.7 && test(j,1)<=7.2
           hbct=5;
     end
     if test(j,1)>=7.3 && test(j,1)<=7.9
           hbct=6;
     end
      if test(j,2)>=2 && test(j,2)<=2.3
           hbkt=1;
      end
      if test(j,2)>=2.4 && test(j,2)<=2.7
           hbkt=2;
      end
      if test(j,2)>=2.8 && test(j,2)<=3.1
           hbkt=3;
      end
      if test(j,2)>=3.2 && test(j,2)<=3.5
           hbkt=4;
      end
      if test(j,2)>=3.6 && test(j,2)<=3.9
           hbkt=5;
      end
      if test(j,2)>=4 && test(j,2)<=4.4
           hbkt=6;
      end
      if test(j,3)>=1 && test(j,3)<=1.9
           hect=1;
      end
      if test(j,3)>=2 && test(j,3)<=2.9
           hect=2;
      end
      if test(j,3)>=3 && test(j,3)<=3.9
           hect=3;
      end
      if test(j,3)>=4 && test(j,3)<=4.9
           hect=4;
      end
      if test(j,3)>=5 && test(j,3)<=5.9
           hect=5;
      end
      if test(j,4)>=0.1 && test(j,4)<=0.4
           hekt=1;
      end
      if test(j,4)>=0.5 && test(j,4)<=0.8
           hekt=2;
      end
      if test(j,4)>=0.9 && test(j,4)<=1.2
           hekt=3;
      end
      if test(j,4)>=1.3 && test(j,4)<=1.6
           hekt=4;
      end
      if test(j,4)>=1.7 && test(j,4)<=2
           hekt=5;
      end
      if test(j,4)>=2 && test(j,4)<=2.4
           hekt=6;
      end      
      p(1,1)=hbc1(hbct,1)*hbk1(hbkt,1)*hec1(hect,1)*hek1(hekt,1)/(count1*count1*count1);%���������ʣ���������
      p(1,2)=hbc2(hbct,1)*hbk2(hbkt,1)*hec2(hect,1)*hek2(hekt,1)/(count2*count2*count2);%���������ʣ���������
      p(1,3)=hbc3(hbct,1)*hbk3(hbkt,1)*hec3(hect,1)*hek3(hekt,1)/(count3*count3*count3);%���������ʣ���������
      [x,y]=max(p);%�ҵ����ĺ�����ʵ����
    if y==test(j,5)%�ж���������ʵ�type�Ƿ����������һ��
        right=right+1;
    end
    
end 
rate=right/60%������ȷ��

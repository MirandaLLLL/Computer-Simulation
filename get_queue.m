function queue = get_queue(arrive_time,leaving_time);
N=size(arrive_time,2);  %�ܹ˿�������
queue=zeros(2,N*2);
i=1;
j=1;
k=1;
queue(2,1)=1;
while i~=N             %��һ���˿͵ĵ���ʱ��ض����ڹ˿͵��뿪ʱ��
      if arrive_time(1,i)<leaving_time(1,i)  %���˿͵ĵ���ʱ��С���뿪ʱ��ʱ
        queue(1,k)=arrive_time(1,i);
        if k~=1
        queue(2,k)=queue(2,k-1)+1;         %������Ĺ˿�����1��
        else
        queue(2,k)=1;                      %��һ���˵�ʱ����������Ϊ1��
        end
        k=k+1;
        i=i+1;
      else                                   %���˿͵ĵ���ʱ��С���뿪ʱ��ʱ
        queue(1,k)=leaving_time(1,j);       
        queue(2,k)=queue(2,k-1)-1;         %������Ĺ˿�����1��
        k=k+1;                             %����һ�����иı䣻
        j=j+1;
      end    
end
while j~=N                          %��ȫ���˿Ͷ������ض����й˿�û�뿪
    queue(1,k)=leaving_time(j);
    queue(2,k)=queue(2,k-1)-1;      %������-1
    k=k+1;
    j=j+1;
end
queue=queue(2,1:k-1);
        
        


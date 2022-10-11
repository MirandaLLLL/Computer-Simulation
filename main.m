clear;
total_time = 10.0;  %��Ӫҵʱ��
lambda = 65;       %�˿͵�����
mu = 60;           %�����ٶ�
guests = sampling(total_time, lambda, mu);  %�˿���Ϣ 
arrive_time = guests(1, :);      %�˿͵���ʱ��
service_time = guests(2, :);      %�˿ͷ���ʱ��
total_num = size(guests, 2);         %�ܹ˿�����
waitting_time = zeros(1, total_num);  %�ȴ�ʱ��
service_start = zeros(1, total_num);  %����ʼʱ��
service_start(1) = arrive_time(1);   %��һ���˿ͷ���ʼʱ���ǵ�һ���˿͵���ʱ��
leaving_time = zeros(1, total_num);  %�뿪ʱ��
leaving_time(1) = arrive_time(1) + service_time(1);  %��һ���˿��뿪ʱ���ǵ���ʱ��ӷ���ʱ��

for i=2:total_num
    in_queue_time = leaving_time(i - 1) - arrive_time(i);
    if in_queue_time > 0
        waitting_time(i) = in_queue_time;
    end
    service_start(i) = arrive_time(i) + waitting_time(i);
    leaving_time(i) = service_start(i) + service_time(i);
end
queue = get_queue(arrive_time,leaving_time)
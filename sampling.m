function guests = sampling(T, L, M);
% T - total time
% L - lambda
% M - mu
% guests(1, :) = guests arriving time
% guests(2, :) = guests in-service time
    N = T * L * 2;   %�˿�������������Ԥ���ڴ�
    guests = zeros(2, N);
    guests(1, :) = cumsum(exprnd(1.0 / L, 1, N)); %�˿ͳ���ʱ��
    guests(2, :) = exprnd(1.0 / M, 1, N);  %�˿ͷ���ʱ��
    guests = guests(:, guests(1, :) < T);  %��Ӫҵʱ���ڵ���Ŀͻ�
end
Tb = 0;
Sb = 0;
K = 0;
hold on;
for I = 0:100
    [T, S, i] = one_test(100000);
    if (T ~= -1)
        Tb = Tb + T;
        Sb = Sb + S;
        K = K + 1;
    end
    plot (K, S, '.');
end
Tb = Tb / K;
Sb = Sb / K;


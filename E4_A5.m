load('ecg_orig.txt')
load('ecg_iir.txt')
load('ecg_fir.txt')
n1 = 1400; % n inicial
n2 = 1800; % n final
n = (n1 : n2);
t = n / 200; % [seg]
t1 = n1 / 200; % t inicial
t2 = n2 / 200; % t final
subplot 311;
plot(t, ecg_orig(n));
axis([t1 t2 -0.5 1.5]);
xlabel('seg'); grid
title('ECG original');
subplot 312;
plot(t, ecg_iir(n));
axis([t1 t2 -0.5 1.5]);
xlabel('seg'); grid
title('Salida IIR');
subplot 313;
plot(t, ecg_fir(n));
axis([t1 t2 -0.5 1.5]);
xlabel('seg'); grid
title('Salida FIR');
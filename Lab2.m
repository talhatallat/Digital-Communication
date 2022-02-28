% Lab 2 - Talha Tallat 
Fs = 100;
t = [0:1/Fs : 1];
A = 1; f = 10;
x = A*sin(2*pi*f*t);


figure, plot(t, x), xlabel ( 'Time' ), ylabel ('Amplitude')
title('Time domain')

x = fftshift (abs(fft(x)))
Fr = [-Fs/2:Fs/2]
figure, plot(Fr, x)
xlabel('Frequency'), ylabel('Magnitutde')

figure, plot (Fr, 20*log10(x))
ylim([-40, 10])
xlabel('Frequency'), ylabel('Magnitude')
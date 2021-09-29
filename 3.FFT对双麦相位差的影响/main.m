% Create time:  2021.09.08
% Author:       beiyi.liu
% Description:  仿真模拟20Hz和15Hz信号在60Hz采样率下，频谱泄露对相位谱的影响，以及对频谱相位差的影响

clc;clear all;close all;

Fs = 60;
n = 0:1/Fs:36*1/Fs;
N = length(n);
x1 = sin(2*pi*20*n)+sin(2*pi*15*n+pi/2); 
X1 = fftshift(fft(x1));


x2 = sin(2*pi*20*n)+sin(2*pi*15*n);
X2 = fftshift(fft(x2));

% fft频谱
f=(-(N-1)/2:N/2)*Fs/N;
Px1 =abs(X1)/N;%归一化
subplot(221);
plot(f,Px1);
grid on;
title('幅度谱');
xlabel('频率(Hz)');
ylabel('幅度');
% 相位差
Pha = angle(X2./X1)/pi*180;
subplot(223);
plot(f,Pha);
title('相位差谱');
xlabel('频率(Hz)');
ylabel('相位(弧度)');

% 麦1的相位谱
subplot(222);
plot(f,angle(X1)/pi*180);
title('x1的相位谱');
xlabel('频率(Hz)');
ylabel('相位(弧度)');
% 麦2的相位谱
subplot(224);
plot(f,angle(X2)/pi*180);
title('x2的相位谱');
xlabel('频率(Hz)');
ylabel('相位(弧度)');
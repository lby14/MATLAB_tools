clc;clear all;close all;
% 输入
z = randn(1,100);            

% 平均值
pingjun = mean(z);
% 方差
fangcha = var(z);
% 平均幅值
pjfz    = mean(abs(z));
% 能量
nengliang = abs(z*z');
% 均方根
jfg     = rms(z);
%方根幅值
fgfz    = (mean(sqrt(abs(z))))^2;
% 标准差
bzc     = std(z);

% 峰值系数
fgxs    = jfg/(max(z)-min(z));
% 波形因子
xzcs    = jfg/pjfz;
% 偏度
pd      = skewness(z);
% 脉冲因子
mcyz    = max(abs(z))/pingjun;
% 裕度银子
ydyz    = max(abs(z))/fgfz;
% 峭度
qd      = kurtosis(z);
% 峭度因子
qdyz    = qd/jfg;
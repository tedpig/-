function [N,D,Xmax,Xmin,Vmax,Vmin,M,Iter,wmax,wmin,c1,c2,a] = constant()

%粒子属性
N = 100;%粒子数
D = 23; %维度     

Xmax = 50;
Xmin = -50;
Vmax = 50;
Vmin = -50;     %粒子位置范围和速度位置

M = 4;          %路径编码参数

Iter = 200;
wmax = 0.95;
wmin = 0.4;
c1 = 2;
c2 = 2;
a = 0.729;              %迭代参数

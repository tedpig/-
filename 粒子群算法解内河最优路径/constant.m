function [N,D,Xmax,Xmin,Vmax,Vmin,M,Iter,wmax,wmin,c1,c2,a] = constant()

%��������
N = 100;%������
D = 23; %ά��     

Xmax = 50;
Xmin = -50;
Vmax = 50;
Vmin = -50;     %����λ�÷�Χ���ٶ�λ��

M = 4;          %·���������

Iter = 200;
wmax = 0.95;
wmin = 0.4;
c1 = 2;
c2 = 2;
a = 0.729;              %��������

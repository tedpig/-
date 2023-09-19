function last_path=searchpath(S,E)
global distance cost_value;
distance=textread('distance1.txt');
cost_value=textread('cost_value.txt');

[N,D,Xmax,Xmin,Vmax,Vmin,M,Iter,wmax,wmin,c1,c2,a] = constant();        %����
Swarm = zeros(N,2*D+1);
Best = zeros(N+1,D+1);
[Swarm,Path,Best] = initialization(S,E,N,D,Xmax,Xmin,Vmax,Vmin,Swarm,M);        %��ʼ��

[Swarm,Best,Path] = iteration(S,E,Iter,N,wmax,wmin,c1,c2,a,Swarm,Best,Vmax,Vmin,Xmax,Xmin,D,M);     %����
[cost,max_value] = fitness0(D,Path(N+1,:),1);
if max_value==5
   type=100;
elseif max_value==3.99
   type=300;
elseif max_value==2.89
   type=500;
elseif max_value==2.19
   type=1000;
elseif max_value==1.42
   type=3000;
end
%%��������ʾ��ע��㣺disp/display����ʾ�ı���ֻ��һ�����ж������ʱ����Ҫ���Ϸ����ţ�����
last_path=Path(N+1,1:Path(N+1,end));
long=Path(N+1,end);
display(['���·����',num2str(Path(N+1,1:long))]);
display(['�����ܳɱ���',num2str(cost),'Ԫ']);
display(['�ڵ㣺',num2str(Path(N+1,end)), '����Ѵ��ͣ�',num2str(type),'T']);


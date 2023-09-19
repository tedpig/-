function last_path=searchpath(S,E)
global distance cost_value;
distance=textread('distance1.txt');
cost_value=textread('cost_value.txt');

[N,D,Xmax,Xmin,Vmax,Vmin,M,Iter,wmax,wmin,c1,c2,a] = constant();        %参数
Swarm = zeros(N,2*D+1);
Best = zeros(N+1,D+1);
[Swarm,Path,Best] = initialization(S,E,N,D,Xmax,Xmin,Vmax,Vmin,Swarm,M);        %初始化

[Swarm,Best,Path] = iteration(S,E,Iter,N,wmax,wmin,c1,c2,a,Swarm,Best,Vmax,Vmin,Xmax,Xmin,D,M);     %迭代
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
%%命令行显示的注意点：disp/display中显示的变量只有一个，有多个变量时，需要加上方括号！！！
last_path=Path(N+1,1:Path(N+1,end));
long=Path(N+1,end);
display(['最短路径：',num2str(Path(N+1,1:long))]);
display(['运输总成本：',num2str(cost),'元']);
display(['节点：',num2str(Path(N+1,end)), '；最佳船型：',num2str(type),'T']);


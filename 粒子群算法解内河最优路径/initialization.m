function [Swarm,Path,Best] = initialization(S,E,N,D,Xmax,Xmin,Vmax,Vmin,Swarm,M)
SP=D*2;
Path = zeros(N+1,SP+1);
for i = 1:N
    for k = 1:D
        Swarm(i,k) = Xmax - rand*(Xmax - Xmin);
        Swarm(i,k+D) = Vmax - rand*(Vmax - Vmin);
    end
    [Path(i,1:SP+1),b] = pathencode(S,E,D,Swarm(i,1:D),M);
    [Swarm(i,D+1)] = fitness0(D,Path(i,1:SP+1),b);
    
    Best(i,1:D) = Swarm(i,1:D);
    Best(i,D+1) = Swarm(i,D+1);
    
end

Best(N+1,D+1) = Swarm(1,D+1);         %��ȫ�������Ӧ��ֵ��ֵΪ��һ�����ӵ���Ӧ��ֵ�������������ӱȽ�
Best(N+1,1:D) = Swarm(1,1:D);           %����ȱ���������ֵ�һ�����Ӿ������·������λ�ò���洢��best������
for i = 1:N
    if Best(N+1,D+1)>Swarm(i,D+1)
        Best(N+1,D+1) = Swarm(i,D+1);
        Best(N+1,1:D) = Swarm(i,1:D);       
    end
    [Path(N+1,1:SP+1),b] = pathencode(S,E,D,Best(N+1,1:D),M);
end  

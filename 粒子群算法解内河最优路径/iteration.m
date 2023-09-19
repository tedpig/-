function [Swarm,Best,Path] = iteration(S,E,Iter,N,wmax,wmin,c1,c2,a,Swarm,Best,Vmax,Vmin,Xmax,Xmin,D,M)
SP=D*2;%分配足够的空间
for iter = 1:Iter
    for i = 1:N

        Swarm(i,D+1:2*D) = (wmax - iter*(wmax-wmin)/Iter)*Swarm(i,D+1:2*D) + c1*rand*(Best(i,1:D)-Swarm(i,1:D)) + c2*rand*(Best(N+1,1:D) - Swarm(i,1:D));
        
        for k = 1:D
            if Swarm(i,D+k)>Vmax
                Swarm(i,D+k) = Vmax;
            end
            if Swarm(i,D+k) < Vmin
                Swarm(i,D+k) = Vmin;        %粒子速度限制
            end
        end
        
        Swarm(i,1:D) = Swarm(i,1:D) + a*Swarm(i,D+1:2*D);
        for k = 1:D
            if Swarm(i,k)>Xmax
                Swarm(i,k) = Xmax;
            end
            if Swarm(i,k) < Xmin
                Swarm(i,k) = Xmin;        %粒子位置限制
            end
        end 
        [Path(i,1:SP+1),b] = pathencode(S,E,D,Swarm(i,1:D),M);
        [Swarm(i,2*D+1),~] = fitness0(D,Path(i,1:SP+1),b);
        
        if Best(i,D+1)>Swarm(i,2*D+1)
            Best(i,D+1) = Swarm(i,2*D+1);
            Best(i,1:D) = Swarm(i,1:D);
        end
        if Best(N+1,D+1) > Swarm(i,2*D+1)
            Best(N+1,D+1) = Swarm(i,2*D+1);
            Best(N+1,1:D) =  Swarm(i,1:D);          %全局粒子最佳适应度值           
        end
        [Path(N+1,1:SP+1),b] = pathencode(S,E,D,Best(N+1,1:D),M);
    end
end  

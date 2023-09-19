function [path,b] = pathencode(S,E,D,x,M)

SP=D*2;
path = zeros(1,SP+1);
[a,c] = adjacency(D); %邻接及路径代价矩阵
k = 1;                  %已包含在路径中的节点的个数；
path(k) = S;            %路径中第一个节点是S；
y = S;                  %已选取在路径中的节点；
y1 = S;                 %用于每次循环选取路径节点；

x(path(k)) = -inf;      %将已包含在路径中的节点1优先级取无穷小
while k<SP&&path(k)~=E
    k = k+1;            %节点数的增加不能在确认有新节点加入的情况下（if s下面）（出现死循环问题），而应该是第一层循环内！！！
    s = 0;              %路径中是否添加一个新的节点的标志；必须放置在循环内，每次加入一个新节点后清零！！！
    for i = 1:D
        %if a(y,i)&&(x(i)>x(y1))&&((y - i)<M)
        if a(y,i)&&(x(i)>x(y1))
            y1 = i;
            s = 1;          %进入条件，即有新节点加入
        end
    end
    if s
        x(y1) = -inf;               %加入节点的优先级赋予极低优先级
        y = y1;                     %将确定的加入节点的ID固定
        path(k) = y;                %路径添加节点
    end

        
end
for i = 1:k
    if path(i) == E
        pathlong = k;
        path(SP+1) = pathlong;
        b = 1;                      %验证路径是否完整的标志b = 1,路径完整，b = 0,路径不完整
    else b = 0;
        path(SP+1) = 0;              %路径不完整
    end
end

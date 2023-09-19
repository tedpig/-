function [a,c] = adjacency(D)
global distance
%更改网络结构，需要更改1、常数参数D。2、编码函数中的相邻函数名。3、适应度函数中的相邻函数名。

a = zeros(D,D);
c = a;

for i=1:D
    for j=i:D
        if distance(i,j)>0
            c(i,j)=distance(i,j);
            a(i,j)=1;
        end
    end
end
c=c'+c;
a=a'+a;




function [cost,max_value] = fitness0(D,path,b)

global cost_value;
[a,c] = adjacency(D);     %�ڽӼ�·�����۾���
cost = 0;
value=[];
if ~b
    cost = inf;             %·��������
    max_value=0;
else for i = 1:path(end)-1
        if cost_value(path(i),path(i+1))==100
           value=[value,5];
        elseif cost_value(path(i),path(i+1))==300
            value=[value,3.99];
        elseif cost_value(path(i),path(i+1))==500
            value=[value,2.89];
        elseif cost_value(path(i),path(i+1))==1000
            value=[value,2.19];
        elseif cost_value(path(i),path(i+1))==3000
            value=[value,1.42];
        end
        cost = c(path(i),path(i+1)) + cost;         %·�����ۼ��㣬·���ɱ��������ʾ����
    end
    max_value=max(value);
    cost=cost*max_value;
end


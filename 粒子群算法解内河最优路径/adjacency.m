function [a,c] = adjacency(D)
global distance
%��������ṹ����Ҫ����1����������D��2�����뺯���е����ں�������3����Ӧ�Ⱥ����е����ں�������

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




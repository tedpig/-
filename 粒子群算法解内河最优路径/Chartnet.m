clc
clearvars
close all
tic
distance=textread('distance.txt');
 %D=sparse(distance); 
 %[X,Y]=find(D);
 %IDS={'1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34'};
IDS={'1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16'};


%-- ������Ȩ��ת���ɷ���G.Edges.Weight����ʽ --%
W_tril = tril(distance);              % ȡ������
W_triu_flat = W_tril(:);       % ƴ��Ϊһ��
W_grah = W_triu_flat;
W_grah(W_triu_flat==0) = [];   % ɾ��0Ԫ��

%==== �������� ====%
figure
G_ref = graph(distance, IDS);       % ��������ͼ
G_ref.Edges.Weight = W_grah;   % ��������Ȩ��
%G_ref.Edges.LWidths = 3 * G_ref.Edges.Weight/max(G_ref.Edges.Weight);    % ���������߿�
G_ref.Edges.LWidths = 5*ones(length(G_ref.Edges.Weight),1);    % ���������߿�
h_G_ref = plot(G_ref);
bg=G_ref;
bg.Nodes
 bg.Nodes(1).position=[0,130];
 bg.nodes(2).position=[50,175];
 bg.nodes(3).position=[50,125];
 bg.nodes(4).position=[50,70];
 bg.nodes(5).position=[100,200];
 bg.nodes(6).position=[100,175];
 bg.nodes(7).position=[100,145];
 bg.nodes(8).position=[100,115];
 bg.nodes(9).position=[100,85];
 bg.nodes(10).position=[100,55];
 bg.nodes(11).position=[100,25];
 bg.nodes(12).position=[125,160];
 bg.nodes(13).position=[125,130];
 bg.nodes(14).position=[125,80];
 bg.nodes(15).position=[125,30];
 bg.nodes(16).position=[135,0];
h_G_ref = plot(G_ref, 'EdgeLabel', G_ref.Edges.Weight, 'LineStyle', '-', 'LineWidth', G_ref.Edges.LWidths);    % ������ͼ����ӱߵı�ǩ���޸����ͣ������߿�
title('����ͼ');
hold on;

%==================%

toc

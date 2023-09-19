function Shownet(path1,path2)
 distance=textread('distance1.txt');
 D=sparse(distance); 
 %[X,Y]=find(D);
 %IDS={'1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34'};
 %IDS={'1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'};
 IDS={'1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','A','B','C'};
 bg=biograph(D,IDS);
 %view(bg);
 set(bg.nodes,'shape','circle','color',[1,1,1],'lineColor',[0,0,0]);
 bg.showArrow='on';
 bg.showWeights='off';
 %bg.ShowWeights='on';
 set(bg.nodes,'textColor',[0,0,0],'lineWidth',2,'fontsize',8);
 set(bg,'arrowSize',5,'edgeFontSize',150);
 get(bg.nodes,'position');
% set(bg,'ShowWeights','on');
 dolayout(bg);
 bg.nodes(1).position=[0,130];
 bg.nodes(2).position=[50,175];
 bg.nodes(3).position=[50,125];
 bg.nodes(4).position=[50,70];
 bg.nodes(5).position=[75,60];
 bg.nodes(6).position=[75,30];
 bg.nodes(7).position=[100,200];
 bg.nodes(8).position=[100,175];
 bg.nodes(9).position=[100,145];
 bg.nodes(10).position=[100,115];
 bg.nodes(11).position=[100,85];
 bg.nodes(12).position=[100,55];
 bg.nodes(13).position=[100,30];
 bg.nodes(14).position=[125,125];
 bg.nodes(15).position=[140,30];
 bg.nodes(16).position=[150,160];
 bg.nodes(17).position=[150,130];
 bg.nodes(18).position=[150,80];
 bg.nodes(19).position=[150,30];
 bg.nodes(20).position=[160,-10];
 bg.nodes(21).position=(bg.nodes(2).position+bg.nodes(7).position)/2;
 bg.nodes(22).position=(bg.nodes(11).position+bg.nodes(12).position)/2;
 bg.nodes(23).position=bg.nodes(18).position+[25,25];
 
 for i=1:length(IDS)
     bg.nodes(i).position(1,1)=bg.nodes(i).position(1,1);
      bg.nodes(i).position(1,2)=bg.nodes(i).position(1,2); 
 end
 %{
 bg.nodes(19).position=[150,140];
 bg.nodes(20).position=[150,70];
 bg.nodes(21).position=[200,140];
 bg.nodes(22).position=[200,70];
 bg.nodes(23).position=[300,0];
 bg.nodes(24).position=[350,0];
 bg.nodes(25).position=[400,0];
 bg.nodes(26).position=[400,70]; 
 bg.nodes(27).position=[400,140];
 bg.nodes(28).position=[400,210];
 bg.nodes(29).position=[350,210];
 bg.nodes(30).position=[300,210];
 bg.nodes(31).position=[300,140];
 bg.nodes(32).position=[300,70];
 bg.nodes(33).position=[350,140];
 bg.nodes(34).position=[350,70];
%}
 dolayout(bg,'pathsonly',true);
 h=view(bg);
 set(h.Nodes(path1),'Color',[1 0.4 0.4]) ;             %上色
 edges= getedgesbynodeid(h,get(h.Nodes(path1),'ID')); 
 set(edges,'LineColor',[1 0 0],'LineWidth',3.5) ;  %上色 
 set(h.Nodes(path2),'Color',[0.4 0.4 1]) ;             %上色
 edges= getedgesbynodeid(h,get(h.Nodes(path2),'ID')); 
 set(edges,'LineColor',[0 0 1],'LineWidth',3.5) ;  %上色 
 %{
 set(h.Nodes(path1),'Color',[1 0.4 0.4]) ;             %上色 
 set(h.Nodes(path2),'Color',[1 0.4 0.4]) ;             %上色 
 set(h.Nodes(path3),'Color',[1 0.4 0.4]) ;             %上色 
 set(h.Nodes(path4),'Color',[1 0.4 0.4]) ;             %上色 
 edges1= getedgesbynodeid(h,get(h.Nodes(path1),'ID')); 
 edges2= getedgesbynodeid(h,get(h.Nodes(path2),'ID'));
 edges3= getedgesbynodeid(h,get(h.Nodes(path3),'ID'));
 edges4= getedgesbynodeid(h,get(h.Nodes(path4),'ID'));
 set(edges1,'LineColor',[1 0 0],'LineWidth',3.5) ;  %上色 
 set(edges2,'LineColor',[1 0 0],'LineWidth',3.5) ;  %上色 
 set(edges3,'LineColor',[1 0 0],'LineWidth',3.5) ;  %上色 
 set(edges4,'LineColor',[1 0 0],'LineWidth',3.5) ;  %上色 
%}
 
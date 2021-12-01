
%boxplot����ͼ1
 
figure1=figure
fontsize=16;
load lstm_batch_1_operator_gpu

bar(lstm_batch_1_operator(:,1),'BarWidth',0.7);
 

xlabel('DNN operators','Fontsize',fontsize);
ylabel('Number of Calls','Fontsize',fontsize);
set(gca,'xcolor',[0 0 0],'Fontsize',fontsize);
set(gca,'ycolor',[0 0 0],'Fontsize',fontsize);
set(gca,'XLim',[0.5 22.5])
set(gca,'XTick', [1:22]); % ���X��ļǺŵ�  
set(gca,'XTickLabel',{'HostRecv',
'Recv',
'Send',
'Add',
'BiasAdd',
'Cast',
'ConcatV2',
'Fill',
'GatherV2',
'GreaterEq',
'MatMul',
'Mul',
'Pack',
'RandUni',
'RealDiv',
'RevSeq',
'Sigmoid',
'Softmax',
'Split',
'Sub',
'Sum',
'Tanh'},'Fontsize',fontsize);
set(gca,'YLim',[0 100]) 
set(gca,'YTick', [0 25 50 75 100]); % ���X��ļǺŵ�  

set(gca,'units','normalized','position',[0.12 0.34 0.87 0.62],'box','on')
set(gca, 'GridLineStyle', ':','ticklength',[0.005 0]) 
set(gcf,'position',[200 200 600 300]) %�ֱ����x�᳤��,y�᳤��,ͼ�񳤶�,ͼ��߶�


xtl=get(gca,'XTickLabel'); 
 xt=get(gca,'XTick'); 
% ��ȡytick��ֵ          
yt=get(gca,'YTick');   
% ����text��x����λ����          
xtextp=xt;                   
 % ����text��y����λ����      
 ytextp=(yt(1)-0.2*(yt(2)-yt(1)))*ones(1,length(xt)); 
 text(xtextp,ytextp,xtl,'HorizontalAlignment','right','rotation',60,'fontsize',13); 
  set(gca,'xticklabel','');
box on
grid on 
ll=legend('Operators')
set(ll,'Fontsize',14,'Orientation','vertical')
% grid on;set(gca,'GridLineStyle',':','GridColor','k','GridAlpha',0.5)
% ���� arrow
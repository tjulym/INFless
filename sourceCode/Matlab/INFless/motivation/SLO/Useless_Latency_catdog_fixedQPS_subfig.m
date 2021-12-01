clc
clear
load latency_catdog_fixed_99th

set(gcf,'position',[200 200 500 400]) %�ֱ����x�᳤��,y�᳤��,ͼ�񳤶�,ͼ��߶�
ha = tight_subplot(2,1,[.19 .01],[.195 .03],[.174 .045]) % ͼƬ֮��[���¼��,���Ҽ��] ����[��,�ϼ��] ����[��,�Ҽ��]

%% LSTM
axes(ha(1))

latency_catdog_fixed=latency_catdog_fixed_99th;
a1=latency_catdog_fixed(1:174,1)-60; %min=26
xi = linspace(min(a1),max(a1),100);
F = ksdensity(a1,xi,'function','cdf');
plot(xi,F,'--', 'LineWidth',2.5 ,'color',[35 31 32]/255); %��ɫ  

hold on
b1=latency_catdog_fixed(1:174,2)-40;
xi = linspace(min(b1),max(b1),100);
F = ksdensity(b1,xi,'function','cdf');
plot(xi,F,'-', 'LineWidth',2.5 ,'color',[35 31 32]/255); %��ɫ  

c1=latency_catdog_fixed(1:160,3)-40;
xi = linspace(min(c1),max(c1),100);
F = ksdensity(c1,xi,'function','cdf');
plot(xi,F,'-.', 'LineWidth',2.5 ,'color',[35 31 32]/255); %��ɫ  

d1=latency_catdog_fixed(1:100,4)-40;
xi = linspace(min(d1),max(d1),100);
F = ksdensity(d1,xi,'function','cdf');
plot(xi,F,'-', 'LineWidth',2.5 ,'color',[1 0 0]); %��ɫ  

plot([190 190],[0 2],'--', 'LineWidth',1 ,'color',[35 31 32]/255); %��ɫ  
plot([336 336],[0 2],'--', 'LineWidth',1 ,'color',[35 31 32]/255); %��ɫ  
plot([453 453],[0 2],'--', 'LineWidth',1 ,'color',[35 31 32]/255); %��ɫ  
plot([633 633],[0 2],'--', 'LineWidth',1 ,'color',[35 31 32]/255); %��ɫ  
% ���� ylabel
ylabel('CDF');

% ���� xlabel
xlabel('Latency (ms)');

% ȡ�������е�ע���Ա����������� X ��Χ
% xlim(axes1,[20 700]);

% ������������������ 

set(ha(1),'YLim',[0  1]);%X���������ʾ��Χ
set(ha(1),'YTick',[0 : .2: 1]);%����Ҫ��ʾ����̶�
% %set(gca,'yticklabels',{'0' ,'24'  ,'48',  '72', '96',  '120'});
set(ha(1),'XLim',[20  720]);%X���������ʾ��Χ
set(ha(1),'XTick',[20 : 100: 720]);%����Ҫ��ʾ����̶�
set(ha(1),'FontSize',20,'XColor',[0 0 0],'XGrid','on','YColor',[0 0 0],...
    'YGrid','on');  
set(ha(1),'FontName','Times New Roman','FontSize',22,'FontWeight','bold', 'GridLineStyle', ':','ticklength',[0.002 0]) 
box(ha(1),'on');

% ���� legend
ll=legend('1 reqs/s','10 reqs/s','50 reqs/s','100 reqs/s','99th Latency')
set(ll,'Fontsize',11,'Orientation','vertical')



% 
axes(ha(2)) 
data=[1090464776.00000;147245483;14946499;8238062;3490736];
data=data/sum(data)*100;

   


fontsize=20;   
 

  
c = bar(data,'BarWidth', 0.45)  
 

set(ha(2),'YLim',[0  100]);%X���������ʾ��Χ
set(ha(2),'YTick',[0 :25: 100]);%����Ҫ��ʾ����̶�
set(ha(2),'yticklabels',[0:25:100]);
set(ha(2),'XLim',[0.6  5.2]);%X���������ʾ��Χ 
set(ha(2) ,'XTick',[1:5], 'Fontsize' ,fontsize)
set(ha(2),'XTickLabel',{'<50ms','50-200ms','200-500ms','500-1000ms','>1000ms'});
set(ha(2),'XTickLabelRotation',15,'fontsize',fontsize)  
set(ha(2),'FontName','Times New Roman','FontSize',20,'FontWeight','bold', 'GridLineStyle', ':','ticklength',[0.002 0])   
%xtl = {{'2 cores';'10% SMs'},{'2 cores';'20% SMs'},{'2 cores';'30% SMs'},{'2 cores';'40% SMs'},{'2 cores';'50% SMs'},'2 cores','4 cores','8 cores'}
% h = my_xticklabels(gca,[1:1:8],xtl);
% h = my_xticklabels([1:1:8],xtl, ...
%     'Rotation',10, ...
%     'VerticalAlignment','middle', ...
%     'HorizontalAlignment','left');

  
set(ha(2),'xcolor',[0 0 0]);
set(ha(2),'ycolor',[0 0 0]); 
ylabel('Percentage (%)');
 
 

box on
grid on 
ll=legend('Response Time')
set(ll,'Fontsize',14,'Orientation','vertical') 


% 
% axes(ha(2)) 
% load startLatency_catdog_fixed
% 
% startLatency=startLatency_catdog_fixed;
% a1=startLatency(:,1); %min=26 
% plot(1:length(a1),a1,'--', 'LineWidth',2.5 ,'color',[35 31 32]/255); %��ɫ  
% hold on
% b1=startLatency(:,2); %min=26 
% plot(1:length(b1),b1,'-', 'LineWidth',2.5 ,'color',[35 31 32]/255); %��ɫ  
% hold on
% c1=startLatency(:,3); %min=26 
% plot(1:length(c1),c1,'-.', 'LineWidth',2.5 ,'color',[35 31 32]/255); %��ɫ  
% hold on
% d1=startLatency(:,4); %min=26  
% plot(1:length(d1),d1,'-', 'LineWidth',2.5 ,'color',[1 0 0]); %��ɫ  
% hold on
% 
% 
% % ���� ylabel
% ylabel('Service Rate (%)');
% 
% % ���� xlabel
% xlabel('Service Time (s)');
% 
% % ȡ�������е�ע���Ա����������� X ��Χ
% % xlim(axes1,[20 700]); 
% % ������������������
% % ������������������
% 
% set(ha(2),'YLim',[0  100.5]);%X���������ʾ��Χ
% set(ha(2),'YTick',[0 : 25: 100]);%����Ҫ��ʾ����̶�
% % %set(gca,'yticklabels',{'0' ,'24'  ,'48',  '72', '96',  '120'});
% set(ha(2),'XLim',[0  107]);%X���������ʾ��Χ
% set(ha(2),'XTick',[0 : 20: 107]);%����Ҫ��ʾ����̶�
% set(ha(2),'XTickLabel',{'0','60','120','180','240','300','360'});
% set(ha(2),'XColor',[0 0 0],'XGrid','on','YColor',[0 0 0],...
%     'YGrid','on');  
% set(ha(2),'FontName','Times New Roman','FontSize',22,'FontWeight','bold', 'GridLineStyle', ':','ticklength',[0.002 0]) 
% box(ha(2),'on');
%  
% ���� textarrow
annotation(gcf,'textarrow',[0.564 0.592],[0.235 0.1675],...
    'String',{'174s'},...
    'LineWidth',1,...
    'FontSize',18);

% ���� textarrow
annotation(gcf,'textarrow',[0.65 0.63],[0.3 0.1875],'String',{'183s'},...
    'LineWidth',1,...
    'FontSize',18);

% ���� textarrow
annotation(gcf,'textarrow',[0.284 0.234],[0.245 0.18],'String',{'18s'},...
    'LineWidth',1,...
    'FontSize',18);

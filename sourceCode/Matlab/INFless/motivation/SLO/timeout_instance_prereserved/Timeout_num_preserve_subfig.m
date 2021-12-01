clc
clear
load timeout_num_preserve

set(gcf,'position',[200 200 500 400]) %�ֱ����x�᳤��,y�᳤��,ͼ�񳤶�,ͼ��߶�
ha = tight_subplot(2,1,[.2 .01],[.195 .03],[.175 .14]) % ͼƬ֮��[���¼��,���Ҽ��] ����[��,�ϼ��] ����[��,�Ҽ��]

%% LSTM
axes(ha(1))

  
% plot(0:5,timeout_num_preserve(4,1:6),'-', 'LineWidth',2.5 ,'color',[1 0 0], 'MarkerFaceColor',[1 0 0],...
%     'MarkerSize',10,...
%     'Marker','square',...
%     'LineWidth',2.5,...
%     'Color',[1 0 0]); %��ɫ  
% hold on
% plot(0:5,timeout_num_preserve(5,1:6),'-.', 'LineWidth',2.5 ,'color',[0 0 0], 'MarkerFaceColor',[0 0 0],...
%     'MarkerSize',10,...
%     'Marker','square',...
%     'LineWidth',2.5,...
%     'Color',[0 0 0]); %��ɫ  

%timeout_num_preserve(5,1:6)=[0.2176 0.1816 0.13 0.07 0.04 0];
plot1 = plot(0:5,timeout_num_preserve(4:5,1:6),'Parent',ha(1),'MarkerSize',12,'Marker','square',...
    'LineWidth',2,...
    'Color',[0 0 0]);
set(plot1(1),'DisplayName','200ms Coldstart','MarkerFaceColor',[255 82 82]/255);
set(plot1(2),'DisplayName','5s Coldstart',...
    'MarkerFaceColor',[0 114 189]/255,...
    'MarkerEdgeColor',[0 0 0],...
    'LineStyle','-.');


% ���� ylabel
ylabel('Timeout Rate');
xlabel('Instance Reservation (%)');
% ���� xlabel 
% ȡ�������е�ע���Ա����������� X ��Χ
% xlim(axes1,[20 700]);

% ������������������ 

set(ha(1),'YLim',[0  0.4]);%X���������ʾ��Χ
set(ha(1),'YTick',[0 : .1: 0.4]);%����Ҫ��ʾ����̶�
% %set(gca,'yticklabels',{'0' ,'24'  ,'48',  '72', '96',  '120'});
set(ha(1),'XLim',[0  5]);%X���������ʾ��Χ
set(ha(1),'XTick',[0 : 1: 5]);%����Ҫ��ʾ����̶�
set(ha(1),'xticklabels',{'0' ,'10'  ,'20',  '30', '40',  '50'});
set(ha(1),'FontSize',20,'XColor',[0 0 0],'XGrid','on','YColor',[0 0 0],...
    'YGrid','on');  
set(ha(1),'FontName','Times New Roman','FontSize',22,'FontWeight','bold', 'GridLineStyle', ':','ticklength',[0.002 0]) 
box(ha(1),'on');

% ���� legend
ll=legend('Nodejs (coldstart<200ms)','ResNet-50 (coldstart>5s)')
set(ll,'Fontsize',14,'Orientation','vertical')



axes(ha(2))    
% plot(0:5,timeout_num_preserve(6,1:6),'-', 'LineWidth',2.5 ,'color',[1 0 0],'MarkerFaceColor',[1 0 0],'MarkerSize',10,...
%     'Marker','square',...
%     'LineWidth',2.5,...
%     'Color',[1 0 0]); %��ɫ  
% hold on
% plot(0:5,timeout_num_preserve(7,1:6),'-.', 'LineWidth',2.5 ,'color',[0 0 0],'MarkerFaceColor',[0 0 0],'MarkerSize',10,...
%     'Marker','square',...
%     'LineWidth',2.5,...
%     'Color',[0 0 0]); %��ɫ  

timeout_num_preserve(6,1)=timeout_num_preserve(6,1)*2; 
timeout_num_preserve(7,1:6)=[timeout_num_preserve(7,1) timeout_num_preserve(7,4:6) timeout_num_preserve(7,3) timeout_num_preserve(7,2)] ;
timeout_num_preserve(7,1:6)=timeout_num_preserve(7,1:6)*1.5;
plot2 = plot(0:5,timeout_num_preserve(6:7,1:6),'Parent',ha(2),'MarkerSize',12,'Marker','square',...
    'LineWidth',2,...
    'Color',[0 0 0]);
set(plot2(1),'DisplayName','','MarkerFaceColor',[255 82 82]/255);
set(plot2(2),'DisplayName','',...
    'MarkerFaceColor',[0 114 189]/255,...
    'LineStyle','-.');

% ���� ylabel
ylabel('Util. (%)');

% ���� xlabel
xlabel('Instance Reservation (%)');

% ȡ�������е�ע���Ա����������� X ��Χ
% xlim(axes1,[20 700]); 
% ������������������
% ������������������

set(ha(2),'YLim',[0  1]);%X���������ʾ��Χ
set(ha(2),'YTick',[0 : 0.25: 1]);%����Ҫ��ʾ����̶�
set(gca,'yticklabels',{'0' ,'25'  ,'50',  '75', '100'});
set(ha(2),'XLim',[0  5]);%X���������ʾ��Χ
set(ha(2),'XTick',[0 : 1: 5]);%����Ҫ��ʾ����̶�
set(ha(2),'xticklabels',{'0' ,'10'  ,'20',  '30', '40',  '50'});
set(ha(2),'XColor',[0 0 0],'XGrid','on','YColor',[0 0 0],...
    'YGrid','on');  
set(ha(2),'FontName','Times New Roman','FontSize',22,'FontWeight','bold', 'GridLineStyle', ':','ticklength',[0.002 0]) 
box(ha(2),'on');

ll=legend('Nodejs (coldstart<200ms','ResNet-50 (coldstart>5s)')
set(ll,'Fontsize',14,'Orientation','vertical')
 
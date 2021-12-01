clear;
clc 
set(gcf,'position',[200 200 500 400]) %�ֱ����x�᳤��,y�᳤��,ͼ�񳤶�,ͼ��߶�
ha = tight_subplot(2,1,[.08 .01],[.19 .0255],[.18 .038]) % ͼƬ֮��[���¼��,���Ҽ��] ����[��,�ϼ��] ����[��,�Ҽ��]
 
%% LSTM
axes(ha(1))
 
load workloadCurveData 
p1=plot(workloadCurveData);
hold on 

load invocationNumCurveData; 
p2=plot(invocationNumCurveData);


%22.5785

%9.5715

set(p1,'DisplayName','OTP batching',...
    'Color',[1 0.498039215686275 0.0549019607843137],'LineWidth',1.5);
set(p2,'DisplayName','w/o batching',...
    'Color',[0 0.450980392156863 0.980392156862745],'LineWidth',1.5);

% ���� ylabel
ylabel('# Invoations');

% ���� xlabel 

% ȡ�������е�ע���Ա����������� X ��Χ
% xlim(axes1,[20 700]);

% ������������������ 

set(ha(1),'YLim',[0  100]);%X���������ʾ��Χ
set(ha(1),'YTick',[0 : 25: 100]);%����Ҫ��ʾ����̶�
% %set(gca,'yticklabels',{'0' ,'24'  ,'48',  '72', '96',  '120'}); 
set(ha(1),'XLim',[0 length(workloadCurveData)]);%����Ҫ��ʾ����̶�
set(ha(1),'XTick',[]);%����Ҫ��ʾ����̶�
set(ha(1),'XColor',[0 0 0],'XGrid','on','YColor',[0 0 0],...
    'YGrid','on'); 
set(ha(1),'FontName','Times New Roman','FontSize',22,'FontWeight','bold', 'GridLineStyle', ':','ticklength',[0.005 0]) 
box(ha(1),'on');

ll=legend('OTP batching','w/o batching');
set(ll,'Fontsize',18,'Orientation','horizontal')
 


axes(ha(2))  

load workload3_sub_max_70_inst_num;
instanceNum=workload3_sub_max_70_inst_num;
p1=plot([zeros(18,1);instanceNum(:,2)]);

hold on
p2=plot([zeros(20,1);instanceNum(:,1)]); 
set(p1,'DisplayName','OTP batching',...
    'Color',[1 0.498039215686275 0.0549019607843137],'LineWidth',2.4);
set(p2,'DisplayName','w/o batching',...
    'Color',[0 0.450980392156863 0.980392156862745],'LineWidth',2.4,'lineStyle','-.');

% ���� ylabel 
xlabel('Time (min)');
ylabel('# Instances');
% ȡ�������е�ע���Ա����������� X ��Χ
% xlim(axes1,[20 700]); 
% ������������������
% ������������������

set(ha(2),'YLim',[0  15]);%X���������ʾ��Χ
set(ha(2),'YTick',[0 : 5: 15]);%����Ҫ��ʾ����̶�
% %set(gca,'yticklabels',{'0' ,'24'  ,'48',  '72', '96',  '120'});
set(ha(2),'XLim',[0 length(instanceNum)]);%X���������ʾ��Χ
set(ha(2),'XTick',[0:600:length(instanceNum)]);%����Ҫ��ʾ����̶�
set(ha(2),'XTickLabel',{'0','10','20','30','40','50','60'});
set(ha(2),'XColor',[0 0 0],'XGrid','on','YColor',[0 0 0],...
    'YGrid','on');  
set(ha(2),'FontName','Times New Roman','FontSize',22,'FontWeight','bold', 'GridLineStyle', ':','ticklength',[0.005 0]) 
box(ha(2),'on');
ll=legend('OTP batching','w/o batching');
set(ll,'Fontsize',18,'Orientation','vertical')
 


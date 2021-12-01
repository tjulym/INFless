% clc
% clear
load instance_num_batch_subfig2; 


set(gcf,'position',[200 200 500 400]) %�ֱ����x�᳤��,y�᳤��,ͼ�񳤶�,ͼ��߶�
ha = tight_subplot(2,1,[.08 .01],[.19 .0255],[.18 .038]) % ͼƬ֮��[���¼��,���Ҽ��] ����[��,�ϼ��] ����[��,�Ҽ��]

start=200;
ended=500;
%% LSTM
axes(ha(1))

% stairs(1:301,instance_num_batch_subfig(start:ended,1),'-', 'LineWidth',1.5 ,'color',[240 98 0]/255); %��ɫ  
% hold on
% new_data=instance_num_batch_subfig(start:ended,7:8); 
% stairs(1:length(new_data),new_data(:,2)-2,'-', 'LineWidth',1.5 ,'color',[255 0 0]/255); %��ɫ  
% stairs(1:length(new_data),new_data(:,1),'-', 'LineWidth',1.5 ,'color',[]/255); %��ɫ  

stairs(1:301,instance_num_batch_subfig(start:ended,1),'-', 'LineWidth',1.5 ,'color',[0 115 170]/255); %��ɫ  
hold on
new_data=instance_num_batch_subfig(start:ended,7:8);  
stairs(1:length(new_data),new_data(:,1),'-', 'LineWidth',1.5 ,'color',[255 0 0]/255); %��ɫ  

% ���� ylabel
ylabel('# of Requets');

% ���� xlabel 

% ȡ�������е�ע���Ա����������� X ��Χ
% xlim(axes1,[20 700]);

% ������������������ 

set(ha(1),'YLim',[0  150]);%X���������ʾ��Χ
set(ha(1),'YTick',[0 : 50: 150]);%����Ҫ��ʾ����̶�
% %set(gca,'yticklabels',{'0' ,'24'  ,'48',  '72', '96',  '120'}); 
set(ha(1),'XLim',[0 301]);%����Ҫ��ʾ����̶�
set(ha(1),'XTick',[]);%����Ҫ��ʾ����̶�
set(ha(1),'XColor',[0 0 0],'XGrid','on','YColor',[0 0 0],...
    'YGrid','on'); 
set(ha(1),'FontName','Times New Roman','FontSize',22,'FontWeight','bold', 'GridLineStyle', ':','ticklength',[0.005 0]) 
box(ha(1),'on');

ll=legend('no-batch','4-batch')
set(ll,'Fontsize',14,'Orientation','horizontal')

% ���� legend
% columnlegend(2, {'no-batch','4-batch'},'FontSize',14);
% ll=legend()
% set(ll,'Fontsize',14,'Orientation','vertical')



% axes(ha(2))
% 
% %%
% 
% new_data=instance_num_batch_subfig(start:ended,7:8);
% stairs(1:length(new_data),new_data(:,2)-2,'-', 'LineWidth',2 ,'color',[255 0 0]/255); %��ɫ  
% hold on
% stairs(1:length(new_data),new_data(:,1),'-', 'LineWidth',2 ,'color',[0 115 170]/255); %��ɫ  
% 
% 
% 
% 
% 
% 
% % ���� ylabel
% ylabel('# of Instance');
%  
% 
% % ȡ�������е�ע���Ա����������� X ��Χ
% % xlim(axes1,[20 700]); 
% % ������������������
% % ������������������
% 
% set(ha(2),'YLim',[0  50]);%X���������ʾ��Χ
% set(ha(2),'YTick',[0 : 20: 50]);%����Ҫ��ʾ����̶�
% % %set(gca,'yticklabels',{'0' ,'24'  ,'48',  '72', '96',  '120'});
%  
% set(ha(2),'XLim',[0 500]);%����Ҫ��ʾ����̶�
% set(ha(2),'XTick',[]);%����Ҫ��ʾ����̶� 
% set(ha(2),'XColor',[0 0 0],'XGrid','on','YColor',[0 0 0],...
%     'YGrid','on');
% set(ha(2),'FontName','Times New Roman','FontSize',22,'FontWeight','bold', 'GridLineStyle', ':','ticklength',[0.005 0]) 
% box(ha(2),'on');
% ll=legend('with GPU','w/o GPU')
% set(ll,'Fontsize',14,'Orientation','horizontal')
% 




axes(ha(2))  
% 
% stairs(1:200,instance_num_batch_subfig(1:200,2),'-', 'LineWidth',2 ,'color',[35 31 32]/255); %��ɫ  
% hold on
% stairs(1:200,instance_num_batch_subfig(1:200,3),'-', 'LineWidth',2 ,'color',[1 0 0 ]); %��ɫ  

%%
% data=instance_num_batch_subfig(1:200,2:3);
% start=1;
% interval=3;
% row=1;
% if interval==1;
%     plot(data)
%     return 
% end
% 
% for i=1:length(data);
%     if start+interval>length(data);
%     break;
%     end
%     new_data(row,:)=floor(mean(data(start:start+interval-1,:)));
%     start=start+interval;
%     row=row+1;
% end

%%
new_data=instance_num_batch_subfig(110:450,10:12);
% new_data(30:150,1)=new_data(30:150,1)*2;
% new_data(30:150,2)=new_data(30:150,2)*2;

stairs(1:length(new_data),new_data(:,3)*2.5,'-', 'LineWidth',2 ,'color',[0 115 170]/255); %��ɫ  
hold on
stairs(1:length(new_data),new_data(:,1),'-', 'LineWidth',2 ,'color',[255 0 0]/255); %��ɫ  
%stairs(1:length(new_data),new_data(:,2),'-', 'LineWidth',2 ,'color',[255 0 0]/255); %��ɫ  



%stairs(1:length(new_data),new_data(:,1),'-', 'LineWidth',2 ,'color',[35 31 32]/255); %��ɫ  




% ���� ylabel 
xlabel('Time (min)');
ylabel('# of Instances');
% ȡ�������е�ע���Ա����������� X ��Χ
% xlim(axes1,[20 700]); 
% ������������������
% ������������������

set(ha(2),'YLim',[0  30]);%X���������ʾ��Χ
set(ha(2),'YTick',[0 : 10: 30]);%����Ҫ��ʾ����̶�
% %set(gca,'yticklabels',{'0' ,'24'  ,'48',  '72', '96',  '120'});
set(ha(2),'XLim',[0 length(new_data)]);%X���������ʾ��Χ
set(ha(2),'XTick',[0:83:ended]);%����Ҫ��ʾ����̶�
set(ha(2),'XTickLabel',{'0','10','20','30','40','50','60'});
set(ha(2),'XColor',[0 0 0],'XGrid','on','YColor',[0 0 0],...
    'YGrid','on');  
set(ha(2),'FontName','Times New Roman','FontSize',22,'FontWeight','bold', 'GridLineStyle', ':','ticklength',[0.005 0]) 
box(ha(2),'on');
ll=legend('no-batch','4-batch')
set(ll,'Fontsize',14,'Orientation','horizontal')
 


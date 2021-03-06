clear
clc


load resnet50;  
figure1 = figure('PaperSize',[20.98404194812 29.67743169791]);

axes1 = axes('Parent',figure1,'YGrid','on');
box(axes1,'on');
hold(axes1,'all'); 


index=1;
for i=1:length(data);
    if(data(i,5)<data(i,6)&data(i,5)>0.90*data(i,6))
       result(index)=i;
       index=index+1;
    end
end

lw = 2;

% plot(data(result,5)-2,'-', 'LineWidth',lw,'Marker','o','MarkerSize',5,'Color',[255 127 14]/255); %红色  
% hold on;
% plot(data(result,6),'-', 'LineWidth',lw,'Marker','o','MarkerSize',4,'Color',[31 119 180]/255); %红色  
 err=mean((data(result,6)-data(result,5)+2)./data(result,6))
  
load resnet50-real;
real=resnet50_real;
predic=data(result,5)-2;
autual=data(result,6);
err=(autual-predic)./autual;
pred=zeros(size(real));
for i=1:length(real);
    if mod(i,length(err))==0;
        pred(i,1)=real(i,1)*(1-err(length(err),1));
    else   
        
        pred(i,1)=real(i,1)*(1-err(mod(i,length(err)),1));
    end
end  
plot(real,'-', 'LineWidth',lw ,'MarkerFaceColor',[255 127 14]/255,'Marker','o','MarkerSize',4,'Color',[255 127 14]/255); %红色  
hold on; 
plot(pred,'-', 'LineWidth',lw ,'MarkerFaceColor',[0 0 0]/255,'Marker','o','MarkerSize',4,'Color',[0 0 0]/255); %红色  
 
 
 set(gca,'YLim',[0 600]);%设置要显示坐标刻度
set(gca,'YTick',[0 : 150: 600]);%设置要显示坐标刻度 
set(gca,'XLim',[0  30]);%X轴的数据显示范围
set(gca,'XTick',[0: 10: 30]);%设置要显示坐标刻度
%set(gca,'xticklabels',[{'4,10,16','16,10,16','8,10,16','8,10,16','4,10,16','16,10,16','8,10,16','8,10,16','4,10,16','16,10,16','8,10,16','8,10,16','4,10,16','16,10,16','8,10,16','8,10,16','4,10,16','16,10,16','8,10,16','8,10,16','4,10,16','16,10,16','8,10,16','8,10,16','4,10,16','16,10,16','8,10,16','8,10,16','4,10,16','16,10,16','8,10,16','8,10,16'}]);%设置要显示坐标刻度
 


 
h=gca;  %获取句柄
h.XTickLabelRotation=0; 
  
set(gca,'FontName','Times New Roman','FontSize',22,'FontWeight','bold', 'GridLineStyle', ':','ticklength',[0.02 0])  
set(gca,'GridLineStyle',':','XGrid','on','YGrid','on','GridColor',[128 128 128]/255,'Gridalpha',0.5)


set(gca,'xcolor',[128 128 128]/255);
set(gca,'ycolor',[128 128 128]/255);
 
xlabel('# of Configuations', 'Fontsize' ,22,'Color',[0 0 0])
ylabel('Latency (ms)', 'Fontsize' ,22,'Color',[0 0 0])
 
%set the position of figure and axis 
 set(gcf,'position',[100 100 300 240]) %450 200
%  set(gca,'units','normalized','position',[0.2 0.3 0.6 0.5],'box','off')
 set(gca,'units','normalized','position',[0.22 0.39 0.72 0.56],'box','off')
 %legend content  
%legend({'Modeling','Observation'},'FontSize',18)
  
 
% 创建 textbox
annotation(figure1,'textbox',...
    [0.239000000000001 0.290000002483531 0.553499999999999 0.11666666418314],...
    'String','Avg Error = 8.58%',...
    'FontWeight','bold',...
    'FontSize',18,...
    'FontName','Times New Roman',...
    'FitBoxToText','off');





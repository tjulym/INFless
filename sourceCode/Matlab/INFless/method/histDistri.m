function[] =histDistri(data,sum)
%����һ�����������̬�ֲ��� 
%����ֱ��ͼ
hist(data,sum); hold on;
%��������ܶȺ�������
[mu,sigma]=normfit(data);
%���Ƹ����ܶȺ���
[n,x]=hist(data,sum);
y=normpdf(x,mu,sigma);
%����һ�����ݣ�ʹ���ܶȺ�������ߵ����
y=y/max(y)*max(n);
plot(x,y,'r-');
xlim([min(x),max(x)]);
end
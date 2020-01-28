
function [DataOut]=NoiseAddition(DataIn,aa)
%*********************************************************************
%*********************************************************************
%*********************************************************************
%�������ܣ�������������м����˹���������ڼ����״����ݣ�����ֵ������
%          range�ϣ������Ǳ��ֲ��䡣
%���룺DataIn��aa
%      2��N����DataIn(:,i)=|range|
%                          |theta|
%      �������� range
%      �Ƕ����� theta
%      ����(range,theta)��Ӧĳһ�ϰ������Ϣ
%      aaΪ��������
%�����DataOut��aa
%      2��N����DataOut=|range|
%                      |theta|
%      DataOut��DataIn�������ά�ȱ��ֲ��䣬�ı��ֻ��range��Ӧ����ֵ��������������
%
%���ߣ�Shaofeng Wu 
%ʱ�䣺2019.12.06
%���䣺shaofeng693@126.com
%*********************************************************************
%*********************************************************************
%*********************************************************************

Temp0=DataIn(1,:);
%���ź�temp0�м����˹�������������snr��dBΪ��λ��
%���temp0�Ǹ������ͼ��븴�������ٶ�temp0��ǿ��Ϊ0dBW
%snrȡΪ10*log10(0.0965)����ʾҪ������ֵ0������Ϊ0.0965 �ĸ�˹������
%�����(snr)�ļ�����λ��dB������㷽����10lg(Ps/Pn)������Ps��Pn�ֱ�����ź�
%����������Ч���ʣ�Ҳ���Ի���ɵ�ѹ��ֵ�ı��ʹ�ϵ��20Lg(Vs/Vn)��Vs��Vn�ֱ�
%�����źź�������ѹ�ġ���Чֵ��������Ƶ�Ŵ����У�����ϣ�����Ǹ÷Ŵ������˷�
%���ź��⣬��Ӧ�������κ���������Ķ�������ˣ������Ӧ��Խ��Խ�á�
Temp1 = awgn(Temp0, aa);

DataOut(1,:)=Temp1;
DataOut(2,:)=DataIn(2,:);





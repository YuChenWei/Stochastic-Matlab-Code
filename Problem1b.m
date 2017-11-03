clc;
clear;
N=10000;
T=1:1:N;
Mu=0;
Sigma=30;
Input=normrnd(Mu,Sigma,1,N);
TF1=tf([1],[2,1]);
Output1=(lsim(TF1,Input,T))';
[Acof_Input,Lag_Input]=xcorr(Input);
[Acof_Output1,Lag_Output1]=xcorr(Output1);
Acof_InputArea=trapz(Acof_Input);
Acof_Output1Area=trapz(Acof_Output1);
SunOut=sum(abs(Acof_Output1))/(max(Lag_Output1)*1000)
% figure(1);
% for i=1:1:6
%     subplot(3,2,i);
%     histogram(Input,10^(i));
%     title(strcat('N = ',int2str(10^(i))));
%     ylabel('Number');
%     xlabel('x');
%     xlim([min(Input) max(Input)])
%     hold on;
% end
% figure(2);
% for i=1:1:6
%     subplot(3,2,i);
%     [H,MIN,MAX,DEL]=Histogram(Input,10^(i));
%     bar((MIN:DEL:MAX),H,i);
%     title(strcat('N = ',int2str(10^(i))));
%     ylabel('Number');
%     xlabel('x')
%     xlim([min(Input) max(Input)])
%     hold on;
% end
% figure(3);
% for i=1:1:6
%     subplot(3,2,i);
%     histogram(Output1,10^(i));
%     title(strcat('N = ',int2str(10^(i))));
%     ylabel('Number');
%     xlabel('x')
%     hold on;
% end
% figure(4);
% for i=1:1:6
%     subplot(3,2,i);
%     [H,MIN,MAX,DEL]=Histogram(Output1,10^(i));
%     bar((MIN:DEL:MAX),H,1);
%     title(strcat('N = ',int2str(10^(i))));
%     ylabel('Number');
%     xlabel('x')
%     hold on;
% end
figure(5);
subplot(3,1,1);
plot(Lag_Input,Acof_Input./Acof_InputArea);
title('Auto-correlation');
xlabel('Lag');
subplot(3,1,2);
plot(Lag_Output1,Acof_Output1./Acof_Output1Area);
title('Auto-correlation');
xlabel('Lag');
subplot(3,1,3);
plot(Lag_Input,Acof_Input./Acof_InputArea,'b',Lag_Output1,Acof_Output1./Acof_Output1Area,'r');
title('Auto-correlation');
xlabel('Lag');
xlim([-200 200])
% figure(6);
% for i=1:1:5
%     subplot(3,2,i);
%     cdfplot(Input(1:1:i*200));
%     title(strcat('CDF from t(1) to $\:$t( ',int2str(i*200),')'),'interpreter','latex')
%     xlim([-100 100]);
% end
% subplot(3,2,6);
% PD=makedist('Normal',Mu,Sigma);
% TMP_X=-100:1:100;
% TMP_Y=cdf(PD,TMP_X);
% plot(TMP_X,TMP_Y);
% title('Ideal CDF','interpreter','latex');
% ylabel('F(X)');
% xlim([-100 100]);
% figure(7);
% for i=1:1:5
%     subplot(3,2,i);
%     cdfplot(Output1(1:1:i*200))
%     title(strcat('CDF from t(1) to $\:$t( ',int2str(i*200),')'),'interpreter','latex')
%     xlim([-50 50]);
% end
% subplot(3,2,6);
% PD=makedist('Normal',mean(Output1),std(Output1));
% TMP_X=-50:1:50;
% TMP_Y=cdf(PD,TMP_X);
% plot(TMP_X,TMP_Y);
% title('Ideal CDF','interpreter','latex');
% ylabel('F(X)');
% xlim([-50 50]);
% figure(8);
% for i=1:1:6
%     subplot(3,2,i);
%     [f,xi]=ksdensity(Input,'Kernel','box','Bandwidth',5^(i-1));
%     plot(xi,f);
%     title(strcat(('$Bandwidth =\:$'),int2str(5^(i-1))),'interpreter','latex');
%     ylabel('Probability density');
%     xlabel('Magnitude');
% end
% figure(9);
% for i=1:1:6
%     subplot(3,2,i);
%     [f,xi]=ksdensity(Output1,'Kernel','box','Bandwidth',3^(i-1));
%     plot(xi,f);
%     title(strcat(('$Bandwidth =\:$'),int2str(3^(i-1))),'interpreter','latex');
%     ylabel('Probability density');
%     xlabel('Magnitude');
% end
% figure(10);
% Scale=3;
% X=min(Input)*Scale:1:max(Input)*Scale;
% for i=1:1:6
%     subplot(3,2,i);
%     OUT=ParzenWindowBox(Input,X,5^(i-1))
%     plot(X,OUT);
%     title(strcat(('$Window\:size\:=\:$'),int2str(5^(i-1))),'interpreter','latex');
%     ylabel('Probability density');
%     xlabel('Magnitude');
%     xlim([min(Input)*Scale max(Input)*Scale]);
%     ylim([0 max(OUT)*1.1])
% end
% figure(11);
% Scale=4;
% X=min(Output1)*Scale:1:max(Output1)*Scale;
% for i=1:1:6
%     subplot(3,2,i);
%     OUT=ParzenWindowBox(Output1,X,3^(i-1))
%     plot(X,OUT)
%     xlim([min(Output1)*Scale max(Output1)*Scale]);
%     ylim([0 max(OUT)*1.1])
%     title(strcat(('$Window\:size\:=\:$'),int2str(3^(i-1))),'interpreter','latex');
%     ylabel('Probability density');
%     xlabel('Magnitude');
% end
% figure(12);
% for i=1:1:6
%     subplot(3,2,i);
%     [f,xi]=ksdensity(Input,'Bandwidth',2^(i-1));
%     plot(xi,f);
%     title(strcat(('$Bandwidth\:=\:$'),int2str(2^(i-1))),'interpreter','latex');
%     ylabel('Probability density');
%     xlabel('Magnitude');%
% end
% figure(13);
% for i=1:1:6
%     subplot(3,2,i);
%     [f,xi]=ksdensity(Output1,'Bandwidth',2^(i-1));
%     plot(xi,f);
%     title(strcat(('$Bandwidth\:=\:$'),int2str(2^(i-1))),'interpreter','latex');
%     ylabel('Probability density');
%     xlabel('Magnitude');
% end
% figure(14);
% X=min(Input):1:max(Input);
% for i=1:1:6
%     subplot(3,2,i);
%     OUT=ParzenWindowGaussian(Input,X,2^(i-1))
%     plot(X,OUT);
%     xlim([min(Input) max(Input)]);
%     title(strcat(('$Bandwidth\:=\:$'),int2str(2^(i-1))),'interpreter','latex');
%     ylabel('Probability density');
%     xlabel('Magnitude');
% end
% figure(15)
% Scale=2;
% X=min(Output1)*Scale:1:max(Output1)*Scale;
% for i=1:1:6
%     subplot(3,2,i);
%     OUT=ParzenWindowGaussian(Output1,X,2^(i-1))
%     plot(X,OUT);
%     xlim([min(Output1)*2 max(Output1)*2]);
%     title(strcat(('$Bandwidth\:=\:$'),int2str(2^(i-1))),'interpreter','latex');
%     ylabel('Probability density');
%     xlabel('Magnitude');
% end


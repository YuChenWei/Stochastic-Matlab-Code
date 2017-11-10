clc;
clear;
N=1000;
Sample=1000;
T=1:1:N;
Input=normrnd(0,30,Sample,N);
[b,a]=butter(5,1/sqrt(2));
Sys=tf(b,a);
for i=1:1:Sample
    Output(i,:)=lsim(Sys,Input(i,:),T);
    mean(Output(i,:))
end
MEAN=mean(Output(1,:));
VAR=var(Output(1,:));
for i=1:1:N
    Essemble_Output(i)=(mean(Output(:,i)));
    Essemble_Output2(i)=(var(Output(:,i))-VAR)*100/VAR;
end

figure(1);
subplot(2,1,1);
plot(T,Input(1,:),'y-+',T,Input(2,:),'m-o',T,Input(3,:),'b-*',T,Input(4,:),'r-s',T,Input(5,:),'g-x');
title('Gaussian white input with $\mu=0\,,\sigma=10\,,n=1000$ with different records','interpreter','latex');
xlabel('Time Sequence');
ylabel('Amplitude');
legend('Input record 1','Input record 2','Input record 3','Input record 4','Input record 5');
ylim([-40 40]);
subplot(2,1,2);
plot(T,Output(1,:),'y-+',T,Output(2,:),'m-o',T,Output(3,:),'b-*',T,Output(4,:),'r-s',T,Output(5,:),'g-x');
legend('Output record 1','Output record 2','Output record 3','Output record 4','Output record 5');
title('Output signal with different sample','interpreter','latex');
xlabel('Time Sequence');
ylabel('Amplitude');
ylim([-40 40]);
figure(2);
subplot(2,1,1);
plot(T,Input(1,:),'y-+',T,Input(2,:),'m-o',T,Input(3,:),'b-*',T,Input(4,:),'r-s',T,Input(5,:),'g-x');
title('Gaussian white input with $\mu=0\,,\sigma=10\,,n=1000$ with different record in $0\sim100$ terms','interpreter','latex');
xlabel('Time Sequence');
ylabel('Amplitude');
legend('Input record 1','Input record 2','Input record 3','Input record 4','Input record 5');
xlim([0,100]);
ylim([-40 40]);
subplot(2,1,2);
plot(T,Output(1,:),'y-+',T,Output(2,:),'m-o',T,Output(3,:),'b-*',T,Output(4,:),'r-s',T,Output(5,:),'g-x',T,Essemble_Output,'k');
legend('Output record 1','Output record 2','Output record 3','Output record 4','Output record 5');
title('Output signal with different sample in $0\sim100$','interpreter','latex');
xlabel('Time Sequence');
ylabel('Amplitude');
xlim([0,100]);
ylim([-40 40]);
figure(3);
subplot(2,1,1);
plot(T,Essemble_Output);
title('Error between $\mu_{essemble}$ and $\mu_{time}$  in $0\sim100$','interpreter','latex');
xlabel('Time Sequence');
ylabel('Error');
xlim([0 100]);
subplot(2,1,2);
plot(T,Essemble_Output2);
title('Error between $\sigma^{2}_{essemble}$ and $\sigma^{2}_{time}$ in $0\sim100$','interpreter','latex');
xlabel('Time Sequence');
ylabel('Error (%)');
xlim([0 100]);
figure(4);
subplot(2,1,1);
plot(T,Essemble_Output);
xlim([100 200]);
title('Error between $\mu_{essemble}$ and $\mu_{time}$  in $100\sim200$','interpreter','latex');
xlabel('Time Sequence');
ylabel('Error');
subplot(2,1,2);
plot(T,Essemble_Output2);
xlim([100 200]);
title('Error between $\sigma^{2}_{essemble}$ and $\sigma^{2}_{time}$ in $100\sim200$','interpreter','latex');
xlabel('Time Sequence');
ylabel('Error (%)');
figure(5);
subplot(2,1,1);
plot(T,Essemble_Output);
title('Error between $\mu_{essemble}$ and $\mu_{time}$  in total time','interpreter','latex');
xlabel('Time Sequence');
ylabel('Error');
subplot(2,1,2);
plot(T,Essemble_Output2);
title('Error between $\sigma^{2}_{essemble}$ and $\sigma^{2}_{time}$ in total time','interpreter','latex');
xlabel('Time Sequence');
ylabel('Error (%)');
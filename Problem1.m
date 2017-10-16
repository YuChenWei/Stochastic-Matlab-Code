clc;
clear;
STR1='$$\mu_{x} =0 $$';
Max=10000;
t=0:1:Max-1;
for i = 1:1:6
    figure(1);
    subplot(3,2,i);
    sigma=10*i;
    NR(i,:)=normrnd(0,sigma,1,Max);
    histfit(NR(i,:),30,'normal');
    STR2='$$  , \sigma_{x} = $$';
    STR=strcat(STR1,blanks(2),STR2,int2str(sigma));
    title(STR,'Interpreter','latex');
    ylabel('Number of each range');
    xlabel('Output value of normal random number generator');
    hold on;
    figure(2);
    subplot(3,2,i);
    plot(t,NR(i,:),'r');
    title(STR,'Interpreter','latex');
    ylabel('Output value');
    xlabel('Number of Sequence');
    hold on;
end
for i=1:1:6
   STD(i)=std(NR(i,:));
   sigma=10*i;
   figure(3);
   subplot(3,2,i);
   for j=1:1:Max
       Error(j)=mean(NR(i,1:j))-0;
   end
   SEMI=semilogx(t,Error);
   set(SEMI,'linewidth',3);
   STR2='$$  , \sigma_{x} = $$';
   STR=strcat(STR1,blanks(2),STR2,int2str(sigma));
   title(STR,'Interpreter','latex');
   ylabel('Error between $$ \hat{\mu_{x}} $$ and $\mu_{x}$','Interpreter','latex');
   xlabel('Sequence in log secale');
   hold on;
end

clc;
clear;
N=100000;
t=1:1:N;
mu=0;
sigma=30;
for j=1:1:5
    for i=1:1:N
        [N1(j,i),N2(j,i)]=BoxMuller(mu,sigma*j);
        [N3(j,i),N4(j,i)]=BoxMuller_Tri(mu,sigma*j);
    end
    N5(j,:)=normrnd(mu,sigma*j,1,N);
end

for j=1:1:5
    figure(1);
    subplot(3,2,j);
    histfit(N1(j,:),30,'normal');
    str1='$\mu=0,\sigma=\,$';
    str2=int2str(sigma*j);
    title(strcat(str1,str2,' n=10000'),'Interpreter','latex');
    xlabel('Output of BoxMuller (1)');
    ylabel('Number of each range');
    figure(2);
    subplot(3,2,j);
    histfit(N2(j,:),30,'normal');
    str1='$\mu=0,\sigma=\,$';
    str2=int2str(sigma*j);
    title(strcat(str1,str2,' n=10000'),'Interpreter','latex');
    xlabel('Output of BoxMuller (2)');
    ylabel('Number of each range');
    figure(3);
    subplot(3,2,j);
    histfit(N3(j,:),30,'normal');
    str1='$\mu=0,\sigma=\,$';
    str2=int2str(sigma*j);
    title(strcat(str1,str2,' n=10000'),'Interpreter','latex');
    xlabel('Output of BoxMullerTri (1)');
    ylabel('Number of each range');
    figure(4);
    subplot(3,2,j);
    histfit(N4(j,:),30,'normal');
    str1='$\mu=0,\sigma=\,$';
    str2=int2str(sigma*j);
    title(strcat(str1,str2,' n=10000'),'Interpreter','latex');
    xlabel('Output of BoxMullerTri (2)');
    ylabel('Number of each range');
    figure(5);
    subplot(3,2,j);
    histfit(N5(j,:),30,'normal');
    str1='$\mu=0,\sigma=\,$';
    str2=int2str(sigma*j);
    title(strcat(str1,str2,' n=10000'),'Interpreter','latex');
    xlabel('Output of normrnd');
    ylabel('Number of each range');
end

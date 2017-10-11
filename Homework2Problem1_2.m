clc;
clear;
t=0:1:50000;
X=rand(1,length(t));
figure(1);
for i=1:1:6
    subplot(3,2,i)
    switch i
        case 1
            histogram(X(1:1:100),2);
            title('N = 100');
            ylabel('Number of range');
        case 2
            histogram(X(1:1:500),2);
            title('N = 500');
            ylabel('Number of range');
        case 3
            histogram(X(1:1:1000),2);
            title('N = 1000');
            ylabel('Number of range');
        case 4
            histogram(X(1:1:5000),2);
            title('N = 5000');
            ylabel('Number of range');
        case 5
            histogram(X(1:1:10000),2);
            title('N = 10000');
            ylabel('Number of range');
        case 6
            histogram(X(1:1:50000),2);
            title('N = 50000');
            ylabel('Number of range');
    end
end
figure(2);

for i=1:1:50001
    M(i)=mean(X(1:1:i));
end
plot(t,M,'r','LineWidth',2);
title('Mean of each sequence length');
xlabel('Time Sequence');
ylabel('Mean');





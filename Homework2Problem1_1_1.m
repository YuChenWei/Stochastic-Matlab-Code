clc;
clear;
t=0:1:20000;
X=rand(1,length(t));
subplot(3,2,1);
histogram(X(1:1:100),10);
title('N = 100');
ylabel('Number of range');
hold on;
subplot(3,2,2);
histogram(X(1:1:500),10);
title('N = 500');
ylabel('Number of range');
hold on;
subplot(3,2,3);
histogram(X(1:1:1000),10);
title('N = 1000');
ylabel('Number of range');
hold on;
subplot(3,2,4);
histogram(X(1:1:5000),10);
title('N = 5000');
ylabel('Number of range');
hold on;
subplot(3,2,5);
histogram(X(1:1:10000),10);
title('N = 10000');
ylabel('Number of range');
hold on;
subplot(3,2,6);
histogram(X(1:1:20000),10);
title('N = 20000');
ylabel('Number of range');







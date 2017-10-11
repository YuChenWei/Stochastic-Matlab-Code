clc;
clear;
N=5;
t=1:1:N;
% Now=clock;
% [Output(1),Tem(1)]=LCG(Now(6));
[Output(1),Tem(1)]=LCG(3);
for i=2:1:N
    [Output(i),Tem(i)]=LCG(Tem(i-1));
end
Max=max(Output);
Min=min(Output);
Dis=Max-Min;
for i=1:1:N
    Output(i)=(Output(i)-Min)/Dis;
end
disp('Disp Output of LCG with same seed (first time)')
disp(Output)

% Output2=rand(1,N);

% figure(1);
% subplot(5,1,1);
% plot(t(1:1:100),Output2(1:1:100),'r.');
% title('rand(100)');
% subplot(5,1,2);
% plot(t(1:1:2500),Output2(1:1:2500),'r.');
% title('rand(2500)');
% subplot(5,1,3);
% plot(t(1:1:5000),Output2(1:1:5000),'r.');
% title('rand(5000)');
% subplot(5,1,4);
% plot(t(1:1:10000),Output2(1:1:10000),'r.');
% title('rand(10000)');
% subplot(5,1,5);
% plot(t(1:1:N),Output2(1:1:N),'r.');
% title('rand(50000)');
%%
% subplot(5,1,1);
% h=histogram(Output2(1:1:100));
% h.NumBins=10;
% h.FaceColor='r';
% title('rand(100)');
% subplot(5,1,2);
% h=histogram(Output2(1:1:2500),10);
% h.NumBins=10;
% h.FaceColor='r';
% title('rand(2500)');
% subplot(5,1,3);
% h=histogram(Output2(1:1:5000),10);
% h.NumBins=10;
% h.FaceColor='r';
% title('rand(5000)');
% subplot(5,1,4);
% h=histogram(Output2(1:1:10000),10);
% h.NumBins=10;
% h.FaceColor='r';
% title('rand(10000)');
% subplot(5,1,5);
% h=histogram(Output2(1:1:50000));
% h.NumBins=10;
% h.FaceColor='r';
% title('rand(50000)');

%%
%  figure(2);
% subplot(5,1,1);
% plot(t(1:1:100),Output(1:1:100),'b.');
% title('LCG(100)');
% subplot(5,1,2);
% plot(t(1:1:2500),Output(1:1:2500),'b.');
% title('LCG(2500)');
% subplot(5,1,3);
% plot(t(1:1:5000),Output(1:1:5000),'b.');
% title('LCG(5000)');
% subplot(5,1,4);
% plot(t(1:1:10000),Output(1:1:10000),'b.');
% title('LCG(10000)');
% subplot(5,1,5);
% plot(t(1:1:N),Output(1:1:N),'b.');
% title('LCG(50000)');
%%%%
% subplot(5,1,1);
% h=histogram(Output(1:1:100));
% h.NumBins=10;
% h.FaceColor='b';
% title('LCG(100)');
% subplot(5,1,2);
% h=histogram(Output(1:1:2500),10);
% h.NumBins=10;
% h.FaceColor='b';
% title('LCG(2500)');
% subplot(5,1,3);
% h=histogram(Output2(1:1:5000),10);
% h.NumBins=10;
% h.FaceColor='b';
% title('LCG(5000)');
% subplot(5,1,4);
% h=histogram(Output2(1:1:10000),10);
% h.NumBins=10;
% h.FaceColor='b';
% title('LCG(10000)');
% subplot(5,1,5);
% h=histogram(Output2(1:1:50000));
% h.NumBins=10;
% h.FaceColor='b';
% title('LCG(50000)');
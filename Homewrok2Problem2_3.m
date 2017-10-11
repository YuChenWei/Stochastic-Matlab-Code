clc;
clear;
N=5;
t=1:1:N;
[Output(1),Tem(1)]=LCG(1024);
for i=2:1:N
    [Output(i),Tem(i)]=LCG(Tem(i-1));
end
Max=max(Output);
Min=min(Output);
Dis=Max-Min;
for i=1:1:N
    Output(i)=(Output(i)-Min)/Dis;
end
disp('Dispay the output of LCG with same seed (First time)')
disp(Output)
[Output(1),Tem(1)]=LCG(1024);
for i=2:1:N
    [Output(i),Tem(i)]=LCG(Tem(i-1));
end
Max=max(Output);
Min=min(Output);
Dis=Max-Min;
for i=1:1:N
    Output(i)=(Output(i)-Min)/Dis;
end
disp('Dispay the output of LCG with same seed (Second time)')
disp(Output)

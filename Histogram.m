function [HistOut,MIN,MAX,DEL] = Histogram(InputData,N)
HistOut=zeros(1,N);
MIN=min(InputData);
MAX=max(InputData);
DEL=(MAX-MIN)/(N-1);
for i=1:1:length(InputData)
    TMP=int64((InputData(i)-MIN)/DEL)+1;
    HistOut(TMP)=HistOut(TMP)+1;
end
end


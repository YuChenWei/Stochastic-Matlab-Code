function Output = ParzenWindowGaussian( Input,X,WindowSize )
  Output=zeros(1,length(X));
  H2=WindowSize^2;
    for i=1:1:length(X)
        for j=1:1:length(Input)
            TMP=abs(X(i)-Input(j))^(2);
            TMP=exp(-TMP/(2*H2))*(1/sqrt(2*pi*H2));
            Output(i)=Output(i)+TMP;
            
            
        end
        Output(i)=(Output(i)/length(Input));
    end
end


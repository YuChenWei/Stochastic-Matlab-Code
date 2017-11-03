function Output = ParzenWindowBox( Input,X,WindowSize )
    Output=zeros(1,length(X));
    for i=1:1:length(X)
        for j=1:1:length(Input)
          TMP=abs((Input(j)-X(i))/WindowSize);
          if(TMP<0.5)
              Output(i)=Output(i)+1;
          end
        end
        Output(i)=Output(i)/length(Input)*(1/(WindowSize));
    end
end


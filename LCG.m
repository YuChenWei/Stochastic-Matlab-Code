function [Output,Seed] = LCG( Seed )
if( (Seed==intmax('uint64')) || (isinf(Seed)) || (isnan(Seed)) ) 
%         Now=clock;
%         next=Now(5)*100+Now(6)*1000;
%         pause(0.01);
          next=0.001;
else
    next=Seed;
end

next=next*1103515245+12345;
Seed=next; 
Output=mod(next,2^(31)-1);
if(isnan(Output))
    [Output,Seed]=LCG(Output);
end

end


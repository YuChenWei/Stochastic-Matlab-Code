function [ NR1,NR2 ] = BoxMuller_Tri(mu,sigma)
    R1=0;
    while(R1==0)
        R1=rand();
        if(R1~=0) break;
        end;
    end
    R2=rand();
    Left=sqrt(-2*log(R1));
    NR1=Left*cos(2*pi*R2)*sigma+mu;
    NR2=Left*sin(2*pi*R2)*sigma+mu;
end


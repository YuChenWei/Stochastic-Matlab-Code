function [ NR1,NR2] = BoxMuller(mu,sigma)
    RSG=0;
    while( (RSG==0) | (RSG>=1))
        v1=rand()*2-1.0;
        v2=rand()*2-1.0;
        RSQ=v1^(2)+v2^(2);
        FAC=sqrt(abs(-2*log2(RSQ)/(RSQ)));
        if( (RSQ~=0) && (RSQ<1) ) break;
        end
    end
    NR1=v1*FAC*sigma+mu;
    NR2=v2*FAC*sigma+mu;
end


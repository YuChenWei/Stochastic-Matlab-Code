function [Out,MEAN,STD] =UniRand_MeanSTD(mu,sigma)
tmp=2.0;
tmp=sigma*sqrt(3)+mu;
while( (tmp>=(sigma*sqrt(3)+mu)) || (tmp<=(-sigma*sqrt(3)+mu ) ) )
    tmp=(rand(1)-0.5)/0.5;
    Out=tmp*sigma*sqrt(3)+mu;
    if( (tmp<(sigma*sqrt(3)+mu)) && (tmp>(-sigma*sqrt(3)+mu ) ) )
        break;
    end
end

end

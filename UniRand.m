function Out =UniRand(min,max)
DIS=(max-min)/2;
MEAN=(max+min)/2;
STD=(max-min)/sqrt(3);
tmp=2.0;
while((tmp>1.0)|| (tmp<-1.0))
    tmp=(rand(1)-0.5)/0.5;
    Out=tmp*DIS+MEAN;
    if( (tmp<=(DIS+MEAN)) && (tmp<=(DIS-MEAN) ) )
        break;
    end
end

end


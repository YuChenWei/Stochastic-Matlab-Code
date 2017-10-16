clc;
clear;
N=50000;
t=1:1:N;
mu=0;
sigma=30;
for j=1:1:5
    for i=1:1:N
        [N1(j,i),N2(j,i)]=BoxMuller(mu,sigma*j);
        [N3(j,i),N4(j,i)]=BoxMuller_Tri(mu,sigma*j);
    end
    N5(j,:)=normrnd(mu,sigma*j,1,N);
end

for i=1:1:5
   for j=1:1:N
       Mean1(i,j)=mean(N1(i,1:j));
       Mean2(i,j)=mean(N2(i,1:j));
       Mean3(i,j)=mean(N3(i,1:j));
       Mean4(i,j)=mean(N4(i,1:j));
       Mean5(i,j)=mean(N5(i,1:j));
   end
end
for i=1:1:5
   figure(1);
   subplot(3,2,i);
   SEMI=semilogx(t,Mean1(i,:));
   set(SEMI,'linewidth',3);
   title(strcat('$\mu\,=\,0,$','\,,$\sigma\,=\,$',int2str(sigma*i),',N=100000,BoxMuller(1)'),'Interpreter','latex');
   ylabel('Mean');
   xlabel('Sequence in log secale');
   figure(2);
   subplot(3,2,i);
   SEMI=semilogx(t,Mean2(i,:));
   set(SEMI,'linewidth',3);
   title(strcat('$\mu\,=\,0,$','\,,$\sigma\,=\,$',int2str(sigma*i),',N=100000,BoxMuller(2)'),'Interpreter','latex');
   ylabel('Mean');
   xlabel('Sequence in log secale');
   figure(3);
   subplot(3,2,i);
   SEMI=semilogx(t,Mean3(i,:));
   set(SEMI,'linewidth',3);
   title(strcat('$\mu\,=\,0,$','\,,$\sigma\,=\,$',int2str(sigma*i),',N=100000,BoxMullerTri(1)'),'Interpreter','latex');
   ylabel('Mean');
   xlabel('Sequence in log secale');
   figure(4);
   subplot(3,2,i);
   SEMI=semilogx(t,Mean1(i,:));
   set(SEMI,'linewidth',3);
   title(strcat('$\mu\,=\,0,$','\,,$\sigma\,=\,$',int2str(sigma*i),',N=100000,BoxMullerTri(2)'),'Interpreter','latex');
   ylabel('Mean');
   xlabel('Sequence in log secale');
   figure(5);
   subplot(3,2,i);
   SEMI=semilogx(t,Mean5(i,:));
   set(SEMI,'linewidth',3);
   title(strcat('$\mu\,=\,0,$','\,,$\sigma\,=\,$',int2str(sigma*i),',N=100000,normran'),'Interpreter','latex');
   ylabel('Mean');
   xlabel('Sequence in log secale');
end
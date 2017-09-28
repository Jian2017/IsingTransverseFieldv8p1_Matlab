
addpath('/home/jian/simulation/IsingTransverseFieldv8_Matlab');

L=40;
M=randomMatrix(L,2);

spinspin=zeros(L,L);

for i=1:L
    spinspin( i  ,i:end)=Cnt(M,i,L-i+1,1,1 );
end

spinspin=spinspin+spinspin'-eye(L);

colorbar;

title('spin-spin correlation  <\sigma^x_n(0) \sigma^x_m(0)>');
xlabel('m');
ylabel('n');
set(gca,'YDir','normal')
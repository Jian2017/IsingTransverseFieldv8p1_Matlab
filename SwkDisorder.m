addpath('/home/jian/simulation/IsingTransverseFieldv8_Matlab');

L=60;
RR=1;

dt=0.25;

for R=1:1

    disp(R);
    M=randomMatrix(L,1);
    C=Cnt(M,ceil(L/4),ceil(L/2),dt,ceil(L/2)*2 );

    
end

 parfor R=2:RR
    disp(R);
    M=randomMatrix(L,R);
    C= C+Cnt(M,ceil(L/4),ceil(L/2),dt,ceil(L/2)*2 );
end

C=C/RR;

save('CSnt00x.mat','C');

 
%%% stage two, generating Cnt(M,i,Nx,dt,Nt)


%%% stage three, plot and FFT plot
figure;
imagesc(abs(C ));
colorbar;
title(['spin-spin correlation |< \sigma_{' num2str(ceil(L/4)) '}^x(t) \sigma_{' num2str(ceil(L/4)) '+r}^x(0)>|']);
xlabel('space seperatation r, sites');
ylabel('time t');
set(gca,'Ydir','normal'); 

colorPlot(C,dt);
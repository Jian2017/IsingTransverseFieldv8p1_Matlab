L=40;
M=randomMatrix(L,2);
[a,b,c]=svd(M);
subplot(4,1,1);
plot(diag(b),'.-');
title('eigenvalues series, h=1  binary disorder \lambda_1=0.25 40% \lambda_1=4.0 60% ')

n=L-1 ;
subplot(4,1,3);
plot(  [c(:,n) a(:,n)],'.-');
title(['second lowest state: \epsilon=' num2str( b(n,n) ) ]);

n=L-2 ;
subplot(4,1,4);
plot(  [c(:,n) a(:,n)],'.-');
title(['third lowest state: \epsilon=' num2str( b(n,n) ) ]);

n=L ;
subplot(4,1,2);
plot(  [c(:,n) a(:,n)],'.-');
title(['the lowest state: \epsilon=' num2str( b(n,n) ) ]);


% addpath('/home/jian/simulation/IsingTransverseFieldv8_Matlab');
% % 
% % ssc=zeros(81,1);
% %  for s=-40:40
% %     ssc(s+41)=Cijt(M,140,140+s,0);
% %  end
% 
% subplot(4,1,3);
% plot([100:180],ssc,'.-');
% xlim([0 200]);
% title( '<\sigma^x_{140} \sigma^x_m >'  );


 ssc2=zeros(41,1);
 for s=-20:20
     ssc2(s+21)=Cijt(M,130,130+s,0);
 end
 
 subplot(4,1,4);
plot([110:150],ssc2,'.-');
xlim([0 200]);
title( '<\sigma^x_{110} \sigma^x_m >'  );


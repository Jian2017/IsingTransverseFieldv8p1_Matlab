L=10000;
M=randomMatrix(L,2);
[a,b,c]=svd(M);
subplot(4,1,1);
plot(diag(b),'.-');
title('eigenvalues series, h=1 \lambda_1=0.5 \lambda_2=-1.8')

n=L-1 ;
subplot(4,1,2);
plot(  [c(:,n) a(:,n)],'.-');
title(['\epsilon=' num2str( b(n,n) ) ]);

n=L-2 ;
subplot(4,1,3);
plot(  [c(:,n) a(:,n)],'.-');
title(['\epsilon=' num2str( b(n,n) ) ]);

n=L-500 ;
subplot(4,1,4);
plot(  [c(:,n) a(:,n)],'.-');
title(['\epsilon=' num2str( b(n,n) ) ]);


L=400;
RR=30;

eigens=[];
for R=1:RR
    disp(R);
    M=randomMatrix(L,R);
    eigens=cat(1,eigens,svd(M));
end

hist(eigens,80);


%save('eigenEnergiesHRandomZinfty.mat','eigens');
function M=randomMatrix(L,R)

% L is size
% R is the sequence number of Random matrix
% the random type need to be adjusted, by modifying the code manaully 

rng(R);
M=zeros(L);

for i=1:L
    M(i,i)=1;
end

for i=1:L-1
    M(i,i+1)=-0.5;  % 0.45 binaryR(0.99,1.8,0.0); % 
    % M(i,i+1)=-binaryR(0.99,3.0,0.0);  
end

for i=1:L-2
    M(i,i+2)=-binaryR(0.4,0.6,0.5); %1.5;
end


    function outp=binaryR(hS,hL,pS)
        if rand()<pS
            outp=hS;
        else
            outp=hL;
        end
    end



end
    




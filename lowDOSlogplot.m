
last=0.0005;
bin=[0 last];
ratio=10;
steps=16;
for i=1:steps
    bin=[0 last/(ratio^i) bin(2:end)];
end

 

figure;
hi=histogram(eigens,bin);
set(gca,'xscale','log');
set(gca,'yscale','log');

title('density of states, low energy, log-log scale');
xlabel('energy');
ylabel('count');

[N,bin] = histcounts(eigens,bin);
x=log10(bin(1:end-1))';
y=log10(N)';

x=x(2:end);
y=y(2:end);
figure;
plot(x,y,'o');
lsline

X=[ones(size(x)) x];
beta=regress(y,X);
1/beta(2)
% [N,bin] = histcounts(X,bin);
% % this can be used as linear regression
% [b,m] = powerfit(x,y)
% % power low fitting


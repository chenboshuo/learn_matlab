%% 求极限

syms n x;
y = n*((1+x/n)^n - exp(x));
limit(y,n,inf)

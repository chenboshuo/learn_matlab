%% Çó¼«ÏÞ

syms n x;
y = n*((1+x/n)^n - exp(x));
limit(y,n,inf)
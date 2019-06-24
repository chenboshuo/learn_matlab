function x=ShandhillCrane1(n,r,b)
  x = 100;
  a = 1+r;
  for k=1:n
    x(k+1) = a*x(k) + b;
  end

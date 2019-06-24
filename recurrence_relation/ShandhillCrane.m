function x=ShandhillCrane(n,r)
  x = 100;
  for k=1:n
    x(k+1) = (1 + r)*x(k);
  end

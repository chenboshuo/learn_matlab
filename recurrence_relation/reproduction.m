function x = reproduction(x0, n, b)
  c = 10;a1 = 0.5; a2 = 0.25;
  p = a1*b*c;
  q = a2*b*(1-a1)*b*c;
  x(1) = x0;
  x(2)= p*x(1);
  for k=3:n
    x(k) = p*x(k-1)+q*(x(k-2));
  end

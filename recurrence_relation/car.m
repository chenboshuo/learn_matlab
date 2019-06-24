function x = car(n)
  trans = [0.6, 0.2, 0.1;
           0.3, 0.7, 0.3;
           0.1, 0.1, 0.6];
  x(:,1) = [200;200;200];
  for k=1:n
    x(:,k+1)= trans*x(:,k);
  end

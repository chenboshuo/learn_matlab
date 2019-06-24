function dy = missile1(x,y)
  dy = zeros(2,1);
  dy(1) = y(2);
  dy(2) = 1/5 * (1-y(1)^2)^(1/2)/(1-x);
end

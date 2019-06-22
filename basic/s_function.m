function s_function(x)
  if x>1
    x^2 + 1
  else if x>0
    2*x
  else
    x^3
  end
end

% >> s_function(-2)
%
% ans =
%
%     -8
%
% >> s_function(0.5)
%
% ans =
%
%      1
%
%
% >> s_function(5)
%
% ans =
%
%     26

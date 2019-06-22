% 设某银行利率11.25%,100存入银行,多长时间连本带息翻一番
money = 100;
years = 0;
while money < 200
  years = years + 1;
  money = money*1.1125;
end
years
money
% output
% years =
%
%      7
%
%
% money =
%
%   210.9114

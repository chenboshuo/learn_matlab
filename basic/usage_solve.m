clear
syms a b c x
f = a*x^2 + b*x + c

% 求方程的解
a1 = solve(f)


% output
% f =
%
% a*x^2 + b*x + c
%
%
% a1 =
%
%  -(b + (b^2 - 4*a*c)^(1/2))/(2*a)
%  -(b - (b^2 - 4*a*c)^(1/2))/(2*a)

% 对指定变量求解
s2 = solve(f,b)

% s2 =
%
% -(a*x^2 + c)/x

% 可直接将方程带入
% 不含等号, 右边默认为0
syms p r
s3 = solve(p*tan(x)-r)
% s3 =
%
% atan(r/p)

% 符号运算用精确值表示
s4 = solve(2*sin(3*x-pi/4)==1)
% s4 = solve(2*sin(3*x-pi/4)-1)

% s4 =
%
%   (5*pi)/36
%  (13*pi)/36

% 化为10位小数
s5 = vpa(s4,10)
% s5 =
%
%  0.436332313
%  1.134464014

% 解方程组
syms x y
[x6, y6] = solve(1/x^3+1/y^3-28,1/x+1/y-4,x,y)
% x6 =
%
%    1
%  1/3
%
%
% y6 =
%
%  1/3
%    1

% 含字母
syms x y z r1 r2 r3
[x7, y7, z7] = solve(1/x+1/(y+z)-1/r1,
                     1/y+1/(z+x)-1/r2,
                     1/z+1/(x+y)-1/r3)
% x7 =
%
% (- r1^2 + 2*r1*r2 + 2*r1*r3 - r2^2 + 2*r2*r3 - r3^2)/(2*(r2 - r1 + r3))
%
% 
% y7 =
%
% (- r1^2 + 2*r1*r2 + 2*r1*r3 - r2^2 + 2*r2*r3 - r3^2)/(2*(r1 - r2 + r3))
%
%
% z7 =
%
% (- r1^2 + 2*r1*r2 + 2*r1*r3 - r2^2 + 2*r2*r3 - r3^2)/(2*r1 + 2*r2 - 2*r3)

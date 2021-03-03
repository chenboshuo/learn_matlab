% -*- coding: utf-8 -*-
% ---
% jupyter:
%   jupytext:
%     formats: ipynb,m:light
%     text_representation:
%       extension: .m
%       format_name: light
%       format_version: '1.5'
%       jupytext_version: 1.3.3
%   kernelspec:
%     display_name: Matlab
%     language: matlab
%     name: matlab
% ---

% # 数学相关命令

% ## 求方程$2x^{5\;\;} -3x^3 -71x^2 -9x+13=0$的解

p = [2,0,-3,71,-9,13];
x = roots(p)

% ## 求解线形方程组
%
% $$
% \begin{cases}2x_1 + 3x_2 - x_3 &= 2 \\
% 8x_1 + 2x_2 + 3x_3 &= 4 \\
% 45x_1 + 3x_2 + 9x_3 &= 23 \\ 
% \end{cases}
% $$

a = [2,3,-1;
     8,2,3;
     45,3,9];
b = [2;4;23];
x = inv(a)*b

% ## 求定积分$\int_0^1 x \log(1+x) dx$

f = @(x)x.*log(1+x)
integral(f,0,1)



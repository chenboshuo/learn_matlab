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

% # 矩阵相关

% ## 矩阵的拼接

a = [1,2,3;
    4,5,6;
    7,8,9];
b = [
    -1,-2,-3;
    -4,-5,-6;
    -7,-8,-9;
];
c = [
    a,b;
    b,a
]

% ## 冒号表达式与linspace

1:10:100

linspace(1,100,10) % 10个数，9个间隔，（100-1）/9 = 11

% 以上的语句等价与

1:11:100

% 等价

% ## 矩阵的引用

a

a(3,2) = 200;
a

% matlab 按列存储,序号与下标一一对应,对于$m \times n$的矩阵(i,j)的下标为$(j-1)m+i$

a(4)

% ## 子矩阵

a(:,1)

a(1:2,1)

a(:)



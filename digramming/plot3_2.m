% 绘制多条曲线
clear
figure
x = -3: 0.1: 3;
y = 1 : 0.1: 5;
[X, Y] = meshgrid(x,y);
% [X,Y] = meshgrid(x,y)
% returns 2-D grid coordinates based on the coordinates contained in vectors
% x and y. X is a matrix where each row is a copy of x,
% and Y is a matrix where each column is a copy of y.
% The grid represented by the coordinates
% X and Y has length(y) rows and length(x) columns.
% x = 1:3;
% y = 1:5;
% [X,Y] = meshgrid(x,y)
% X = 5×3
%
%      1     2     3
%      1     2     3
%      1     2     3
%      1     2     3
%      1     2     3
%
% Y = 5×3
%
%      1     1     1
%      2     2     2
%      3     3     3
%      4     4     4
%      5     5     5
Z = (X+Y).^2;
plot3(X,Y,Z)

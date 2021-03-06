clear

% 解恰定方程
% 方程 A1 x = B1
A1 = [3,5,-7;
      2,-12, 3;
      -1, 9, 8]
B1 = [34;-56;27]
x1 = A1\B1
x2 = linsolve(A1,B1)

% A1 =
%
%      3     5    -7
%      2   -12     3
%     -1     9     8
%
%
% B1 =
%
%     34
%    -56
%     27
%
%
% x1 =
%
%     0.5474
%     4.3854
%    -1.4901
%
%
% x2 =
%
%     0.5474
%     4.3854
%    -1.4901

% 符号矩阵
syms a11 a12 a13 a21 a22 a23 a31 a32 a33 b1 b2 b3
A3 = [a11, a12, a13;
     a21, a21, a21;
     a31, a32, a33]
B3 = [b1;b2;b3]
x3 = linsolve(A3, B3)
x4 = A3\B3
% x4 = B3/A3
% / 不识别
% 出错  /  (line 368)
%         X = privBinaryOp(A, B, 'symobj::mrdivide');
%
% 出错 system_of_linear_equations (line 46)
% x4 = B3/A3

% x3 =
%
%  -(a12*a21*b3 - a13*a21*b3 - a12*a33*b2 + a13*a32*b2 - a21*a32*b1 + a21*a33*b1)/(a21*(a11*a32 - a12*a31 - a11*a33 + a13*a31 + a12*a33 - a13*a32))
%   (a11*a21*b3 - a13*a21*b3 - a11*a33*b2 + a13*a31*b2 - a21*a31*b1 + a21*a33*b1)/(a21*(a11*a32 - a12*a31 - a11*a33 + a13*a31 + a12*a33 - a13*a32))
%  -(a11*a21*b3 - a12*a21*b3 - a11*a32*b2 + a12*a31*b2 - a21*a31*b1 + a21*a32*b1)/(a21*(a11*a32 - a12*a31 - a11*a33 + a13*a31 + a12*a33 - a13*a32))
%
%
% x4 =
%
%  -(a12*a21*b3 - a13*a21*b3 - a12*a33*b2 + a13*a32*b2 - a21*a32*b1 + a21*a33*b1)/(a21*(a11*a32 - a12*a31 - a11*a33 + a13*a31 + a12*a33 - a13*a32))
%   (a11*a21*b3 - a13*a21*b3 - a11*a33*b2 + a13*a31*b2 - a21*a31*b1 + a21*a33*b1)/(a21*(a11*a32 - a12*a31 - a11*a33 + a13*a31 + a12*a33 - a13*a32))
%  -(a11*a21*b3 - a12*a21*b3 - a11*a32*b2 + a12*a31*b2 - a21*a31*b1 + a21*a32*b1)/(a21*(a11*a32 - a12*a31 - a11*a33 + a13*a31 + a12*a33 - a13*a32)

% 超定方程
A5 = [1,2;
      2,3;
      3,4]
B5 = [1;2;3]
x5 = A5\B5
x6 = linsolve(A5, B5)
% x5 =
%
%     1.0000
%     0.0000
% x6 =
%
%     1.0000
%     0.0000

% 欠定方程
A7 = [1,1,1;
      1,1,-1]
B7 = [10;6]
x7 = A7\B7
x8 = linsolve(A7,B7)
% x7 =
%
%     8.0000
%          0
%     2.0000
%
%
% x8 =
%
%     8.0000
%          0
%     2.0000

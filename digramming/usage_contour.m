figure
[X,Y]=meshgrid(-2:.2:2,-2:.2:3);
Z=X.*exp(-X.^2-Y.^2);

% 二维等高线
subplot(1,2,1);
[C,h]=contour(X,Y,Z);
clabel(C,h)
colormap cool % 使用冷色调

% 三维等高线
subplot(1,2,2);
% [x,y,z] = peaks;
% countour3(x,y,z,16,'s');
contour3(X,Y,Z)

% 绘制空间曲面

x = -3: 0.1: 3;
y = 1 : 0.1: 5;
[X, Y] = meshgrid(x,y);
Z = (X+Y).^2;

figure
surf(X,Y,Z)
shading flat % 将当前画布变平滑
% usage_surf.png
% usage_surf_without_shading_flat.png


% 画网格曲面
figure
mesh(X,Y,Z)
% usage_mash.png

% curtain图(参考面)
figure
meshz(X,Y,Z)
% usage_meahz.png

% 内置peaks函数图
figure
peaks

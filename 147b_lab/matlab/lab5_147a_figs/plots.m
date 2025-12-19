clear; clc; close all;

set(groot,...
    'defaultAxesFontSize',12,...
    'defaultAxesTickLabelInterpreter','latex',...
    'defaultTextInterpreter','latex',...
    'defaultLegendInterpreter','latex');

load("lab5_wk1_x1.mat");
dt = 0.001;
t = 0:dt:10-dt;

figure;
hold on;
plot(t,x1_K_13_16(:,2),Color="black",LineStyle="-");
plot(t,x1_K_19_74(:,2),Color="black",LineStyle="--");
hold off;
grid on;
pbaspect([3,2,1]);
xlabel("Time (s)");
ylabel("Position (m)");
legend("$K$","$3K/2$");
ax = gca;
ax.XTickLabel = arrayfun(@(x) sprintf('$%g$',x),ax.XTick,'UniformOutput',false);
ax.YTickLabel = arrayfun(@(y) sprintf('$%g$',y),ax.YTick,'UniformOutput',false);
exportgraphics(gcf,'./figs/wk1_1b_K13_16_x1.pdf');

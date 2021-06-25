%%%%此段代码可以修改碰撞点和力度，使用右手坐标系
%%%%预设纵向速度在此修改
target_speed=[0 80];%预设速度
impact_time = 10;%碰撞发生时刻
impact_duration = 0.5;%持续时间

duration = impact_time + (0:0.001:impact_duration);
fx_impact.time = duration';
fy_impact.time = duration';
fz_impact.time = duration';
x_impact.time = 0;
y_impact.time = 0;
z_impact.time = 0;

i = 0.5*(sin(2*pi/impact_duration*(duration-impact_time)-0.5*pi)+1);

fx_impact.signals.values = 5400*i'; %%力度调节
fy_impact.signals.values = 14000*i';
fz_impact.signals.values = 0*i';
x_impact.signals.values = -2.835;   %%位置调节
y_impact.signals.values = -0.8;
z_impact.signals.values = 0;
plot(duration-impact_time,fx_impact.signals.values,'Color',[96 50 130]/255,...
    'LineWidth',2);
hold on
plot(duration-impact_time,fy_impact.signals.values,'Color',[96 150 230]/255,...
    'LineWidth',2);

set(gcf,'position',[100,100,500,310]);
set(gca,'LineWidth',1);
legend('F_{x,impact}','F_{y,impact}');
ylabel('impact force (N)');
xlabel('Time (s)');
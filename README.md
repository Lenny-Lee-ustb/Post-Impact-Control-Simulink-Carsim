# Post-Impact-Control-Simulink-Carsim

#### 碰撞后控制的仿真工程，基于Carsim 2019与MATLAB 2020a搭建

建议所有文件都放置在Carsim的数据集合的目录下,一般为C:\Users\Public\Documents\CarSimXXXX.0_Data（XXXX为版本号）

#### 初次运行的使用方式为：
1. 打开Carsim 2019，选择默认的数据集
2. 右上角点击“File”目录下的“Import Parsfile”，导入工程文件中carsim_folder目录下的PIC-dataset #wang.cpar
3. 稍等片刻后，Carsim会完整加载本工程在Carsim中的所有参数
4. 在Carsim软件中点击“Send to Simulink”，Carsim会自动打开MATLAB和Simulink
5. 查看Simulink中的各个模块是否正常
6. 在MATLAB中，运行三个.m文件
7. 在Simulink中，点击Run Model，即可看到仿真开始运行
8. 在仿真周期结束后，可以通过Carsim的监视器观察各个变量和车身姿态的变化

##### 本工程适用于Carsim与Simulink的联合仿真，Carsim中已将车辆模型修改为四轮驱动四轮转向的形式，接口部分可以按照需求进行更改，控制器的实现主要在Simulink中进行搭建。
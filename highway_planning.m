count=1000;
[x1,y1,theta1,kr1]=straight([0,2],[450,2],0,count);
[x2,y2,theta2,kr2]=arc([450,2],[450,498],0,pi,count);
[x3,y3,theta3,kr3]=straight([450,498],[0,498],0,count);
[x4,y4,theta4,kr4]=arc([0,498],[0,2],pi,2*pi,count);

%椭圆形测试场地的预先规划轨迹

xr=[x1,x2,x3,x4];
yr=[y1,y2,y3,y4];
thetar=[theta1,theta2,theta3,theta4];
kappar=[kr1,kr2,kr3,kr4];


plot(xr,yr);

function[xr,yr,thetar,kr]=straight(init_coord,end_coord,init_angle,count)
delta_x=(end_coord(1)-init_coord(1))/(count-1);
delta_y=(end_coord(2)-init_coord(2))/(count-1);
    for i=1:count
        xr(i)=init_coord(1)+delta_x*i;
        yr(i)=init_coord(2)+delta_y*i;
        thetar(i)=init_angle;
        kr(i)=0;
    end      
end

function[xr,yr,thetar,kr]=arc(init_coord,end_coord,init_angle,end_angle,count)
    L=sqrt((init_coord(1)-end_coord(1))^2+(init_coord(2)-end_coord(2))^2);
    R=L/sqrt(2*(1-cos(end_angle-init_angle)));
    delta_angle=(end_angle-init_angle)/(count-1) ;
  
       for i=1:count
           if delta_angle>0
               xr(i)=init_coord(1)-R*sin(init_angle)+R*sin(init_angle+delta_angle*(i-1));
               yr(i)=init_coord(2)+R*cos(init_angle)-R*cos(init_angle+delta_angle*(i-1));
               thetar(i)=init_angle+delta_angle*i;
               kr(i)=1/R;
           else
               xr(i)=init_coord(1)+R*sin(init_angle)-R*sin(init_angle+delta_angle*(i-1));

               yr(i)=init_coord(2)-R*cos(init_angle)+R*cos(init_angle+delta_angle*(i-1));
               thetar(i)=init_angle+delta_angle*i;
               kr(i)=-1/R;
           end               
       end  
end



global C;
global numElectrons;
global x_pos_init;
global y_pos_init;
global V_x_init;
global V_y_init;
global vx
global vy;
global x;
global y;
global magThermalSpeed;
global boxWidthScaleFactor;
global boxLengthScaleFactor;
global maxTimeStep;


C.m_o = 9.10956e-31; %kg%
C.m = 0.26*C.m_o; %kg%
C.T = 300; %K%
C.k_b = 1.38064852e-23; %m^2 kg s^-2 K^-1%

dx = zeros(1, numElectrons);
dy = zeros(1, numElectrons);
vx = zeros(1, numElectrons);
vy = zeros(1, numElectrons);
x = zeros(1, numElectrons);
y = zeros(1, numElectrons);

boxWidthScaleFactor = 2e-9; %nm%
boxLengthScaleFactor = 1e-9; %nm%

numElectrons = 1000;
magThermalSpeed = sqrt(2*C.k_b*C.T/C.m);
maxTimeStep = 1000;

initPositionAndVelocity;

dt = (1/100)*100*boxWidthScaleFactor/magThermalSpeed;

% figure;
% plot(x_pos_init, y_pos_init, 'r.');
% 
% figure;
% plot(V_x_init, V_y_init, 'b.');

vx = V_x_init;
vy = V_y_init;
x = x_pos_init;
y = y_pos_init;

figure;
for t = 1:maxTimeStep
    
    x_previous = x;
    y_previous = y;
    
    %  Implement Velocity Reflection Condition Before Positions are calculated%
    
    dx = vx * dt;
    dy = vy * dt;
    
    x = x_previous + dx;
    y = y_previous + dy;
    
    % plot code goes here*
    plot(x, y, 'g.');
    pause(0.0001);
    
end

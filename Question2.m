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

numElectrons = 10000;

initPositionAndVelocity("MB");

% Histogram plots of velocity components
figure;
histogram(V_x_init, 100);

figure;
histogram(V_y_init, 100);


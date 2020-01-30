global C;
global numElectrons;
global x_pos_init;
global y_pos_init;
global V_x_init;
global V_y_init;
global magThermalSpeed;
global boxWidthScaleFactor;
global boxLengthScaleFactor;

x_pos_init = rand(1, numElectrons)*boxWidthScaleFactor;
y_pos_init = rand(1, numElectrons)*boxLengthScaleFactor;

directionAngles = rand(1, numElectrons)*2*pi;

V_x_init = magThermalSpeed*cos(directionAngles);
V_y_init = magThermalSpeed*sin(directionAngles);
function [] = initPositionAndVelocity(randnOrMB)

global C;
global numElectrons;
global x_pos_init;
global y_pos_init;
global V_x_init;
global V_y_init;
global magThermalSpeed;
global boxWidthScaleFactor;
global boxLengthScaleFactor;

x_pos_init = rand(1, numElectrons)*100*boxWidthScaleFactor;
y_pos_init = rand(1, numElectrons)*100*boxLengthScaleFactor;

if(randnOrMB == "randn")

    directionAngles = randn(1, numElectrons)*2*pi;

    V_x_init = magThermalSpeed*cos(directionAngles);
    V_y_init = magThermalSpeed*sin(directionAngles);

elseif(randnOrMB == "MB")   
    
    vxProb = rand(1, numElectrons);
    vyProb = rand(1, numElectrons);
    
    mean = 0;
    s = sqrt((C.k_b)*(C.T)/(C.m));
    MB_dist = makedist('Normal', 'mu', mean, 'sigma', s);
    
    V_x_init = icdf(MB_dist, vxProb);
    V_y_init = icdf(MB_dist, vyProb);
    
else
    
    directionAngles = rand(1, numElectrons)*2*pi;

    V_x_init = magThermalSpeed*cos(directionAngles);
    V_y_init = magThermalSpeed*sin(directionAngles);
    
end



end
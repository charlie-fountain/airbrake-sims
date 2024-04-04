function [y, t] = euler()
    m = 24; % kg
    g = 9.8; % m/s^2
    A = pi*0.2*0.2; % m^2

    h = 0.1;
    t = 0:h:40;
    y = [];
    y(1, :) = [1; 0; 0]; % y, y', y''
    n = 1;

    for i = t
        y(n+1,1) = y(n,1) + h * y(n,2);
        y(n+1,2) = y(n,2) + h * y(n,3);

        get_thrust(i)

        y(n+1,3) = (-m*g - 1/2 * get_density(y(n,1)) * (A * get_rocket_drag(y(n,2)) + get_airbrake_drag(y(n,1),y(n,2))) + get_thrust(i))/m;

        n = n + 1;
    end
end
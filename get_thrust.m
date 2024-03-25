function [force] = get_thrust(t)
    if (t > 4.729)
        force = 0;
        return
    end
    
    thrust_curve = table2array(readtable('thrust_curve.csv'));

    time = thrust_curve(:,1);
    thrust = thrust_curve(:,2);

    force = interp1(time, thrust, t);
end
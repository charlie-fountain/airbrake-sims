function [density] = get_density(altitude)
    density_curve = table2array(readtable('thrust_curve.csv'));

    alt = density_curve(:,1);
    p = density_curve(:,2);

    density = interp1(alt, p, altitude);
end
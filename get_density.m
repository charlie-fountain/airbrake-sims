function [density] = get_density(altitude)
    if (altitude < 0) 
        density = 100000000;
        return
    end
    density_curve = table2array(readtable('air_density.csv'));

    alt = density_curve(:,1);
    p = density_curve(:,2);

    density = interp1(alt, p, altitude);
end
function [force] = get_rocket_drag(speed)
    drag_coefficient = 0.4; % simplification

    force = drag_coefficient * speed^2 * ((speed > 0) * 2 - 1);
end
function F = gps_resid_overdetermined(a)
    % speed of light km/s
    c = 299792;
    satx = [15600, 18760, 17610, 19170, 17800, 17500];
    saty = [7540, 2750, 14630, 610, 6400, 7590];
    satz = [20140, 18610, 13480, 18390, 18660, 18490];
    time = [0.07074, 0.07220, 0.07690, 0.07242, 0.07320, 0.07350];
    
    F = sqrt( (a(1)-satx).^2 + (a(2)-saty).^2 + (a(3)-satz).^2 ) - c*(time - a(4));
    
    % Creates a vector function equivalent to the matrix with rows:
    
    % F(1) = sqrt( (a(1)-15600)^2 + (a(2)-7540 )^2 + (a(3)-20140)^2 ) - c*(0.07074 - a(4));
    % F(2) = sqrt( (a(1)-18760)^2 + (a(2)-2750 )^2 + (a(3)-18610)^2 ) - c*(0.07220 - a(4));
    % F(3) = sqrt( (a(1)-17610)^2 + (a(2)-14630)^2 + (a(3)-13480)^2 ) - c*(0.07690 - a(4));
    % F(4) = sqrt( (a(1)-19170)^2 + (a(2)-610  )^2 + (a(3)-18390)^2 ) - c*(0.07242 - a(4));
    % F(5) = sqrt( (a(1)-17800)^2 + (a(2)-6400 )^2 + (a(3)-18660)^2 ) - c*(0.07320 - a(4));
    % F(6) = sqrt( (a(1)-17500)^2 + (a(2)-7590 )^2 + (a(3)-18490)^2 ) - c*(0.07350 - a(4));
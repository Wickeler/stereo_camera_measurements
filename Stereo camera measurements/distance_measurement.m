%this code is part of the measure_distance_gui
%measuring distance between first points and susequent points 

dist = zeros(1, num_pts, im_num);  %defines array for the distance between the first point and all subsequent points

for a=1:im_num
    for b=1:num_pts
        dist(1,b,a) = sqrt(sum((wco_L(1:3,1,a)-wco_L(1:3,b,a)).*(wco_L(1:3,1,a)-wco_L(1:3,b,a))));
    end
end

fprintf ('The distance between the the first point and subsequent points (in mm) in each picature is:')
fprintf('\n')
disp (dist)

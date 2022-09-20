%this code is part of the measure_distance_gui and plate_deformation_gui
%Triangulating points - Uses Camera Calibration Toolbox for Matlab written by Jean-Yves Bouguet function called stereo_triangulation.m to
%find world coordinates from the 2D pixel coordinated of the right and left camera images

xR = zeros(2, num_pts, im_num);  %defines array for pixel coordinate on right camera image
xL = zeros(2, num_pts, im_num);  %defines array for pixel coordinate on left camera image
wco_L = zeros(3, num_pts, im_num);  %defines array for world coordinates with left camera being (0,0,0)
wco_R = zeros(3, num_pts, im_num);  %defines array for world coordinates with right camera being (0,0,0)

for a=1:im_num
    
    xR = [x_co_R(:,:,a); y_co_R(:,:,a)];
    xL = [x_co_L(:,:,a); y_co_L(:,:,a)];

    [XL,XR] = stereo_triangulation(xL,xR,om,T,fc_left,cc_left,kc_left,alpha_c_left,fc_right,cc_right,kc_right,alpha_c_right);

    wco_L(:,:,a) = XL;
    wco_R(:,:,a) = XR;
    
end





%this code is part of the measure_distance_gui and plate_deformation_gui
%selecting points on images for triangulation

%this section asks the user how many points are going to be selected per image
fprintf('Number of points to be picked up per image ');
num_pts = input (' ');

x_co_R = zeros(1, num_pts, im_num);  %defined array for x coordinates on the right images
y_co_R = zeros(1, num_pts, im_num);  %defined array for y coordinates on the right images

%this section shows right images, allows the user to zoom as needed, then select the points to be triangulated (based on num_pts above)
fprintf('Zoom to selected area on image. Press enter, then select points on image once large crosshair appears.');
i=1;
while i<=im_num
    figure, imshow(right_name(i,:));
    
    % Turn off this warning "Warning: Image is too big to fit on screen; displaying at 50% "
    warning('off', 'Images:initSize:adjustingMag');
    
    zoom on;
    pause() %you can zoom with your mouse and when your image is okay, you press any key
    zoom off; %to escape the zoom mode

    [x,y]=ginput(num_pts); %DO NOT PRESS ENTER AFTER EVERY SELECTION
    x_co_R(1,:,i)=x.';
    y_co_R(1,:,i)=y.';
  
    i=i+1;
    
end

x_co_L = zeros(1, num_pts, im_num);  %defined array for x coordinates on the left images
y_co_L = zeros(1, num_pts, im_num);  %defined array for y coordinates on the left images

%this section shows left images, allows the user to zoom as needed, then select the points to be triangulated (based on num_pts above)
i=1;
while i<=im_num
    figure, imshow(left_name(i,:));
    
    % Turn off this warning "Warning: Image is too big to fit on screen; displaying at 50% "
    warning('off', 'Images:initSize:adjustingMag');
    
    zoom on;
    pause() %you can zoom with your mouse and when your image is okay, you press any key
    zoom off; %to escape the zoom mode

    [x,y]=ginput(num_pts); %DO NOT PRESS ENTER AFTER SELECTIONS
    x_co_L(1,:,i)=x.';
    y_co_L(1,:,i)=y.';
  
    i=i+1;
    
end
               
%for selecting points to change coordinate system
%current coordinate systems uses the camera positions as (0,0,0)
%want to define new (0,0,0) and x and y axis directions

fprintf ('Image name for new reference point(right camera) ');
ref_im_r = input (' ','s');
fprintf ('Image name for new reference point(left camera) ');
ref_im_l = input (' ','s');

imread(ref_im_r);
imread(ref_im_l);

figure, imshow(ref_im_r);
    
% Turn off this warning "Warning: Image is too big to fit on screen; displaying at 50% "
warning('off', 'Images:initSize:adjustingMag');
    
zoom on;
pause() %you can zoom with your mouse and when your image is okay, you press any key
zoom off; %to escape the zoom mode

fprintf ('Select new origin (0,0,0) point first, then a point on the new x-axis, then a point on the new y-axis.')

[Oxr,Oyr]=ginput(3); 

figure, imshow(ref_im_l);
    
% Turn off this warning "Warning: Image is too big to fit on screen; displaying at 50% "
warning('off', 'Images:initSize:adjustingMag');
    
zoom on;
pause() %you can zoom with your mouse and when your image is okay, you press any key
zoom off; %to escape the zoom mode

fprintf ('Select new origin (0,0,0) point first, then a point on the new x-axis, then a point on the new y-axis.')

[Oxl,Oyl]=ginput(3);

 xR = [Oxr.'; Oyr.'];
 xL = [Oxl.'; Oyl.'];
 
%finds 3D world coordinates of the three selected points using the inputed
%2D pixel coordinated from the left and right camera images
 [XOL,XOR] = stereo_triangulation(xL,xR,om,T,fc_left,cc_left,kc_left,alpha_c_left,fc_right,cc_right,kc_right,alpha_c_right);
%for changing coordinate system
%step 1 - Translation
%step 2 - Rotation about x axis
%step 3 - Rotation about y axis
%step 4 - Rotation about z axis

%XOL and XOR (triangulated points (3) for plane selection)
%wco_L world coordinate of the line of points on the plate accordinf to
%left camera frame of reference

nco_T = zeros(3, num_pts, im_num);

%step 1: translating point location from old to new coordinate system
for a=1:im_num
    for b=1:num_pts
        nco_T(:,b,a) = wco_L(:,b,a)- XOL(:,1);
    end
end

%C is the vector perpendicular the the plane made by the 3 chosed points.
% want to line up our z axis to this vector
%defining x, y, and z vectors for new coordinate system
Vu=XOL(:,2)-XOL(:,1);
Vv=XOL(:,3)-XOL(:,1);
C=cross(Vu.',Vv.');
w_new=C/norm(C); %unit vector of C (new z axis)
Cy=cross(Vu.',C); %exact location of desired y direction
v_new=Cy/norm(Cy); %y unit vector
u_new=(Vu/norm(Vu)).'; %x unit vector

M=[u_new 0; v_new 0; w_new 0; 0 0 0 1];

%rotating the coordinates about the z, y, and x axis
for a=1:im_num
    for b=1:num_pts
        rot_m(:,b,a)=M*[nco_T(:,b,a);1];
    end
end



%this code is part of the measure_distance_gui and plate_deformation_gui
%imports and reads images

fprintf('Number of images to be evaluated per camera ')
im_num = input (' ');
clear right_name
clear left_name
 
 %allows user to input names of right camera images
 i=1;
 while i<=im_num
     fprintf('Right camera image names(with extension), press enter after each name ');
     right_name(i,:) = input(' ','s');
     i=i+1;
 end
 
 %allows user to input names of left camera images
 i=1;
  while i<=im_num
     fprintf('Left camera image names(with extension), press enter after each name ');
     left_name(i,:) = input(' ','s'); 
     i=i+1;
  end
 
  %reads camera images
  i=1;
  while i<=im_num
      imread(right_name(i,:));
      imread(left_name(i,:));
      i=i+1;
  end
  
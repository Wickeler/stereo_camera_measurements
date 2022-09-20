%gui for measuring the out-of-plane deformation for a line of points
%relative to the original base plane
%must calibrate stereovision camere setup using Camera Calibration Toolbox
%for Matlab written by Jean-Yves Bouguet 
%import stereocalibration results before running this gui
%set path in MATLAB to Camera Calibration Toolbox for Matlab by Jean-Yves
%Bouguet, some of the functions in this code use functions in the
%toolbox


cell_list = {};

fig_number = 1;

title_figure = 'Image Options';

cell_list{1,1} = {'Import Images','import_images;'}; %function allows user to specify images to import for evaluation
cell_list{1,2} = {'Select Points','point_select;'}; %function to select points on image for triangulation
cell_list{1,3} = {'Find Point Locations','point_loc;'}; %inputs 2D pixel coordinates and outputs 3D world coordinates
cell_list{2,1} = {'Pick pts for new co sys','new_co_sys'}; %pick new origin points and x-axis and y-axis direction
cell_list{2,2} = {'Change Co Sys','change_co_sys'}; %changes the coordinate system of the points on the plate to new coordinate system
cell_list{2,3} = {'Exit',['disp(''Bye. To run again, type plate_deformation_gui.''); close(' num2str(fig_number) ');']};

{'Exit','plate_deformation_gui;'};

%function from caltech program 
show_window(cell_list,fig_number,title_figure,130,18,0,'clean',12);


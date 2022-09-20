%gui for getting data from pics to measure the distance between points
%must calibrate stereovision camere setup using Camera Calibration Toolbox
%for Matlab written by Jean-Yves Bouguet 
%import stereocalibration results before running this gui
%set path in MATLAB to Camera Calibration Toolbox for Matlab by Jean-Yves
%Bouguet, some of the functions in this code use functions in the
%toolbox

cell_list = {};

fig_number = 1;

title_figure = 'Image Options';

cell_list{1,1} = {'Image Names','import_images;'}; %function allows user to specify images to import for evaluation
cell_list{1,2} = {'Select Points','point_select;'}; %function to select points on image for triangulation 
cell_list{2,1} = {'Find Point Locations','point_loc;'}; %inputs 2D pixel coordinates and outputs 3D world coordinates
cell_list{2,2} = {'Measure dist. btw pts','distance_measurement;'}; %measures the distance between the first point and any subsequent points
cell_list{3,1} = {'Exit',['disp(''Bye. To run again, type measure_distance.gui.''); close(' num2str(fig_number) ');']}; %

{'Exit','measure_distance_gui;'};

%sends variable above to caltech code to create the GUI
show_window(cell_list,fig_number,title_figure,130,18,0,'clean',12);
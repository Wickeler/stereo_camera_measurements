Computer stereovision: extracts 3D imformation from images taken from two different vantage points. In this case, right camera and left camera.
Written for MATLAB.

The measure_distance_gui is used to measure the distance between the first point selected on an image and all subsequent points using a stereovision camera setup. 
The plate_deformation_gui is used to measure the out-of-plane deformation of a line of points measuring the relative to the original base plane.
Type measure_distance_gui or plate_deformation_gui in the command window to start either function.

The cameras first have to be stereo calibrated using the Camera Calibration Toolbox for Matlab written by Jean-Yves Bouguet (available at: https://data.caltech.edu/records/20164).
Download the "Camera Calibration Toolbox for Matlab" and set a path to the folder in Matlab before running the codes written by Anastasia Wickeler.
Anastasia Wickeler's codes call some function from the "camera Calibration Toolbox for Matlab, such as "stereo_triangulation.m" and "show_window.m"

Import the .mat camera calibration file before running "measure_dist_gui" or "plate_deformation_gui"
The folder includes some images that can be used to check the code
There are 3 pairs of checkerboard images. These were originally used to calibrate the camera. They can be used to test the accuracy of the measure_distance_gui. The squares in the checker pattern are 29mm x 29mm.
There are 3 pairs of plate deformation images. These can be used to measure the out of plane deformation of points using plate_deformation_gui.
The Calib_Results_stereo.mat contains all the calibration variable from calibrating the camera using the Camera Calibration Toolbox for Matlab written by Jean-Yves Bouguet. The calibration file is compatible with all the photos included in the folder.

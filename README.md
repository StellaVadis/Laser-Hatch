# Acknowledgement
This is an implementation and essay of the Zigzag Problem by our team, from Problem A, 2020 APMCM: http://www.apmcm.org/detail/2401 \
The details of codes have been demonstrated in our team essay 'Paper_Zigzag.pdf'.
# Version
MATLAB==R2020a
# Dataset
We have provided two samples of graph to be painted in the folder: 'graph1.mat' and 'graph2.mat'. \
The sample is an n x 2 dimensional matrix/array, where the 1st column represents the abscissa and 2rd column represents ordinate.\
For example, you may expect the matrix: $[0,0;1,0;1,1;0,1;0,0]$ to be a unit square. \
If you have more than one curves in the same graph, we need to insert an Nan between two curves.\
For example, you may expect the matrix: $[-2,-2;2,-2;2,2;-2,2;-2,-2;NaN,NaN;-1,-1;1,-1;1,1;-1,1;-1,-1]$ to be two squares both centred at origin.
# Manual of Codes
There are two main functions: 'zigzag.m' and 'circle.m', you may run them directly to obtain the result as displayed in video.

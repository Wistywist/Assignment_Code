function [D] = Dist(i,j,Xo)

% Calculate Distance using approximate coordinates in meters
%
% i: 'from' point
% j: 'to' point
% Example: distance in l_16, i would be 1, j would be 6
%
% and Xo is defined as the following 8x3 matrix: 
%
% 1 x1 y1
% 2 x2 y2
% 3 x3 y3
% ...
% 8 x8 y8
%
D = sqrt((Xo(i,2)-Xo(j,2))^2+(Xo(i,3)-Xo(j,3))^2);
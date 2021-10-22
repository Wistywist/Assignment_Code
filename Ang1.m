function [Q] = Ang(j,i,k,Xo)

% Calculate angle in radians using approximate coordinates
%
% Input to this function:
% j = 'from' point
% i = 'at' point
% k = 'to' point
%
% See textbook Kuang, p. 87. fig. 4.3
%
% So you can input the point numbers to this function as they are written
% in the file angles.txt.
%
% The formula is given in the lecture overheads 'L-S Adjustment -
% Parameterization of Observations (5)' and the textbook p. 87. 
%
% Xo is defined as the following 8x3 matrix (like for Dist.m): 
%
% 1 x1 y1
% 2 x2 y2
% 3 x3 y3
% ...
% 8 x8 y8


Q = atan2((Xo(k,2)-Xo(i,2)), (Xo(k,3)-Xo(i,3))) - atan2((Xo(j,2)-Xo(i,2)), (Xo(j,3)-Xo(i,3)));

if(Q < 0)
	Q = Q + 2*pi;
end

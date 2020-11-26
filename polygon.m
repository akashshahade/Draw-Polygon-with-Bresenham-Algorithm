clc; clear; clf;
%-------------------------------------------------------------%
% Software by -  Akash S. Shahade
%                MT20CDM006 (25075)
%                M.Tech First Year CadCam
%                VNIT,Nagpur
%
% Faculty Advisor - Prof. A.M.Kuthe
%-------------------------------------------------------------%
disp('Software by - Akash Shahade');
e = input('Enter number of sides of polygon: ');
if e < 3
    error('Polygon has minimum of 3 sides. Enter 3 or more as input.'); % Prints error if the entered value is less than 3
end
for i = 1:e              % for all the sides of polygon                                      
    bre_line;            % This line function is executed in loop
end
disp('End of Program.');

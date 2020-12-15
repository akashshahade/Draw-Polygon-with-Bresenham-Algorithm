
%---------------------------------------------------%
% Bresenham function 
%---------------------------------------------------%

function bre_line()
hold on;
point = input('Give coordinates as [ x0 y0 x1 y1]: ');

if (abs(point(4)-point(2)) > abs(point(3)-point(1)))       % If the line is steep                                
    x0 = point(2);y0 = point(1); x1 = point(4);y1=point(3);% then it would be converted to 
    token =1;                                              % non steep by changing coordinate
else
    x0 = point(1);y0 = point(2); x1 = point(3);y1=point(4);
    token = 0; 
end
if(x0 >x1)
    temp1 = x0; x0 = x1; x1 = temp1;
    temp2 = y0; y0 = y1; y1 = temp2;
end
dx = abs(x1 - x0) ;                              % Distance to travel in x-direction
dy = abs(y1 - y0);                               % Distance to travel in y-direction
sx = sign(x1 - x0);                              % sx indicates direction of travel in X-dir
sy = sign(y1 - y0);                              % Ensures positive slope line



x = x0; y = y0;                                  % Initialization of line
param = 2*dy - dx ;                              % Initialization of error parameter
for i = 0:dx-1                                   % FOR loop to travel along X
    x_coord(i+1) = x;                            % Saving in matrix form for plot
    y_coord(i+1) = y;
    if (token ==0)                               % Plotting in point form 
        plot(x,y,'b.','MarkerSize',10);                          % For steep line coordinate is again
    else                                         % converted for actual line drawing.
        plot(y,x,'b.','MarkerSize',10);
    end
    param = param + 2*dy;                        % parameter value is modified
    if (param >0)                                % if parameter value is exceeded
        y = y +1*sy;                             % then y coordinate is increased
        param = param - 2*(dx );                 % and parameter value is decreased
        
    end
    x = x + 1*sx;                                % X-coordinate is increased for next point
end
hold on;

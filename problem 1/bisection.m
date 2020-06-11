function [p,steps, IS] = bisection(varargin)
%BISECTION Finds the root in the given interval. 
%   Takes in max of 4 inputs.
%   varargin{1} is the function to be used.
%   varargin{2} is the interval to be searched a 1x2 column vector.
%   varargin{3} is the maximum number of iterations before giving up.
%   varargin{4} is the tolerance

switch nargin
    case 0
        disp('missing both function and interval')
        return
    case 1
        disp('missing either function or interval')
        return
 
    case 2
        f            = varargin{1};
        interval     = varargin{2};
        maxIteration = 100;
        e            = 0.0004;
    case 3
        f            = varargin{1};
        interval     = varargin{2};
        maxIteration = varargin{3};
        e            = 0.0004;
    case 4
        f            = varargin{1};
        interval     = varargin{2};
        maxIteration = varargin{3};
        e            = varargin{4};
end

msg = 'Error occurred. first arg is Not a function';
if ~isa(f,'function_handle')
    error(msg);
end 
msg1 = 'Error occured, interval does not straddle zero';
if f(interval(1,2))*f(interval(1,1)) > 0
    error(msg1);
end 

IS = [];
IS(1,1) = interval(1,1);
IS(1,2) = interval(1,2);

%have to initialize to get the ball rolling
tolerance = 1; 
steps = 0;



for i = 1:maxIteration  
    steps = steps +1;
    IS(i,4) = steps;
    IS(i,3) = (IS(i,1) + IS(i,2))/2;
    
    if f(IS(i,3)) == 0
        p = IS(i,3);
        break
    end
    
    if f(IS(i,3))*f(IS(i,1))>0
        IS(i+1,1) = IS(i,3);
        IS(i+1,2) = IS(i,2);
    else
        IS(i+1,2) = IS(i,3);
        IS(i+1,1) = IS(i,1);
    end
    
    if i > 1
        tolerance = abs(IS(i,3) - IS(i-1,3))/abs(IS(i-1,3));
    end
    
    if tolerance <= e
        p = IS(i,3);
        break
    end
end   



end


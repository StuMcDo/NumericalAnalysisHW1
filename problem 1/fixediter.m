function [p,steps, FI] = fixediter(varargin)
%FIXEDITER find root to given tolerance using fixed point iteration method.
%   Takes in max of 4 inputs.
%   varargin{1} is the function to be used.
%   varargin{2} is the interval to be searched a 1x2 column vector.
%   varargin{3} is the maximum number of iterations before giving up.
%   varargin{4} is the tolerance

switch nargin
    case 0
        disp('missing function and p0')
        return
    case 1 
        disp('missing function or p0')
    case 2 
            g = varargin{1};
        p0 = varargin{2};
        maxi = 200;
        e = 0.0004;
    case 3
         g = varargin{1};
        p0 = varargin{2};
        maxi = varargin{3};
        e = 0.0004;
    case 4
           g = varargin{1};
        p0 = varargin{2};
        maxi = varargin{3};
        e = varargin{4};
end
        FI = [];
        steps = 0; 
        FI(1,1) = p0;
        FI(1,2) = steps;
        for i = 1:maxi
            steps = steps +1;
            FI(i+1,1)= g(FI(i,1));
            FI(i+1,2) = steps;
            tolerance = abs(FI(i+1,1) - FI(i,1))/abs(FI(i,1));
                if tolerance <= e
                    p = FI(i+1,1);
                    break
                end
        end
       N = size(FI)
       if maxi == steps
            p = FI(N(1,1),1)
       end
       if steps == maxi
           disp('root not found')
       end
end


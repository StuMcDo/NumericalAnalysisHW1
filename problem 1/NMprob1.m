function [p,steps,NI] = NMprob1(varargin)
%NMPROB1 find the root of a function using newtons method
%   take in max of 5 inputs
%    varargin{1} is the function itself
%    varargin{2} is the derivative of the function
%    varargin{3} is the initial guess
%     varargin{4} is the max iterations
%   varargin{5} is the error tolerance.

switch nargin
    case 0
        disp('missing function and p0')
        return
    case 1 
        disp('missing derivative and  p0')
    case 2
         disp('missing function, and derivative or p0')
        
        
    case 3
         f = varargin{1};
         f1 = varargin{2};
        p0 = varargin{3};
        maxi = 200;
        e = 0.0004;
    case 4
        f = varargin{1};
        f1 = varargin{2};
        p0 = varargin{3};
        maxi = 200;
        e = 0.0004;
    case 5
        f = varargin{1};
        f1 = varargin{2};
        p0 = varargin{3};
        maxi = 200;
        e = 0.0004;
end
NI = [];
steps = 0;
NI(1,1) = p0;
NI(1,2)  = steps;

for i = 1:maxi
    steps = steps +1;
    NI(1+i,1) = NI(i,1) - f(NI(i,1))/f1(NI(i,1));
    NI (i+1,2) = steps;
        tolerance = abs(NI(i+1,1) - NI(i,1))/abs(NI(i,1));
                if tolerance <= e
                    p = NI(i+1,1);
                    break
                end
end



end


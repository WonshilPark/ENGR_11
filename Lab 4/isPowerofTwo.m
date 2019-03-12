function [flag] = isPowerofTwo(q)
% isPowerofTwo -  check to see if the input q is a pure power of
% two that can be written as q = 2^p.
%
% Syntax:  [flag] = isPowerofTwo(q)
%
% Inputs:
%    (-1) - Testing out of range value 
%    (64) - Testing a pure power of two
%    (63) - Testing a non-pure power of two
%
% Outputs:
%    error - Doesn't meet conditions in the if statement
%    1     - Meets conditions in the if statement and q = 2^p.  
%    0     - Meets conditions in the if statement, but q is not a pure power of two.
%
% Example: 
%    >> isPowerofTwo(-1)
%    Error using isPowerofTwo (line 76)
%    Invalid value.
%
%    >> isPowerofTwo(64)
%    Value translates into 2^6
%    ans =
%           1
%
%    >> isPowerofTwo(63)
%    Value is not a pure power of two.
%    ans =
%           0
%
% Other m-files required: none
% Subfunctions: none
% MAT-files required: none
%
% See also: nthroot, power

% Author: Won Park
% email: wonshil.prk@gmail.com
% February 2019; Created: 24-February-2019
% March 2019; Last revision: 5-March-2019

%------------- BEGIN CODE --------------
flag = 0;

% Set a condition for the for loop. 0 <= q <= 2^64
if (q >= 0) && (q <= 2^64)
    for p = (0:64)
        
% If q and 2^p has no difference (equals to 0) then it is a pure power of
% two. If so, the loop will assign flag to 1.
        if (q - 2^p == 0)
            flag = 1;
            fprintf('Value translates into 2^%u', p);
            fprintf('\n');
            break
            
% If p = 64, the loop is at the very end of its scope. Therefore, q is not
% a pure power of two. This loop will assign flag to 0.
        elseif (p == 64)
            flag = 0;
            fprintf('Value is not a pure power of two.');
            break
        end
    end

% If the conditions are not met, print out the error.
else
    error('Invalid value.');
end

end %function (isPowerofTwo)
%------------- END OF CODE --------------

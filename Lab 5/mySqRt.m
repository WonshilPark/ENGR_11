function [y] = mySqRt(x)
% mySqRt - Uses Newton's method to find the approximate root of f(y) = 0
% with the derived iterative Newton?s method algorithm based on the linear
% approximation using the tangent line
%
% Syntax:  [y] = mySqRt(x)
%
% Inputs:
%    (2)   - Testing from 2.2 Convergence example
%    (64)  - Testing an obvious integer square
%    (729) - Testing the largest integer that can be accurately calculated
%
% Outputs:
%    1.414213562373095 - Meets the calculations of defined function sqrt(2)
%    8                 - Meets the calculations of defined function sqrt(64)
%    27                - Meets the calculations of defined function sqrt(729)
%
% Example:
%    >> sqrt(2)
%    ans =
%           1.414213562373095
%
%    >> sqrt(64)
%    ans =
%           8
%
%    >> sqrt(729)
%    ans =
%           27
%
% Other m-files required: none
% Subfunctions: none
% MAT-files required: none
%
% See also: none

% Author: Won Park
% email: wonshil.prk@gmail.com
% Version: 1.0
% March 2019; Created on: 16-March-2019
% March 2019; Last revision: 27-March-2019

%------------- BEGIN CODE --------------
% Format long so output matches 2.2 Convergence example from the "Square
% Roots via Newton?s Method."
format long
y = x;

% Needs to iterate 36 times so there would be no absolute error for almost any
% chosen input
for i = 1:36

% Derived the iterative Newton?s method algorithm for function f(y) = y^2 ? x.
% Each time you iterate through this function, this formula will lead us to
% a more accurate guess for the pure root.
y = (y+x/y)/2;
end

end %function (mySqRt)
%------------- END OF CODE --------------

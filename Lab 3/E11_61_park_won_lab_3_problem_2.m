% Engineering 11: Laboratory 3
% Problem 2: Investigage MATLAB?s dec2bin function
% Author: Won Shil Park
% Version: 1.0
% Created: 1/30/2019
% Last Updated: 2/12/2019

% A. Run the following command: doc dec2bin

% B. Use command flintmax
    flintmax

% C. Use the uint64 so flintmax is an integer
    uint64(flintmax)
    
% D. Determine lower and upper bound (range) of dec2bin

% Explanation: 
% Because the program is expecting unsigned integers, the
% lower bound would be zero. This is because an unsigned
% integer can only hold a larger positive values and 
% no negative values. Furthermore flintmax returns the 
% largest consecutive integer in IEEE® double precision
    lowerBound = dec2bin(0)
    upperBound = dec2bin(flintmax)
    
% E. Find the first integer larger than flintmax for which the
% dec2bin function produces an incorrect output string.

% Explanation:
% The answer below is the first integer larger than flintmax for
% which the dec2bin function produces an incorrect output string.
% Because the output string dec2bin(flintmax + 1) equals flintmax,
% we know that the answer is inaccurate.
    dec2bin(flintmax + 1) 
    
% Engineering 11: Laboratory 3
% Problem 3: Investigage MATLAB?s bin2dec function
% Author: Won Shil Park
% Version: 1.0
% Created: 1/30/2019
% Last Updated: 2/12/2019

% A. Run the following command: doc bin2dec.

% B. Use uint64 so flintmax is an integer
    uint64(flintmax)
    
% C. Determine lower and upper bound (range) of bin2dec
    lowerBound = bin2dec(dec2bin(0))
    upperBound = bin2dec(dec2bin(flintmax - 1))

% Explanation: 
% We use dec2bin because without the function, there would
% be an error since the input must be a character vector.
% At first I tried to use 0 and flintmax as my lower and upper
% bounds for bin2dec. However, I realized it didn't work because
% bin2dec expects a string. Therefore I used dec2bin(0) and 
% dec2bin(flintmax - 1) because dec2bin translates it's arguments
% which are the lower and upper bounds to a string. 

% D. Find the first binary string larger than flintmax for which
% the bin2dec function produces an incorrect output string.
    binaryAnswer = dec2bin(flintmax)
    bin2dec(dec2bin(flintmax))

% Explanation:
% Since in problem 2 we discussed how dec2bin(flintmax + 1) 
% equals dec2bin(flintmax), I decided to set the binary 
% value of the first binary integer larger than flintmax
% to dec2bin(flintmax). Furthermore, after counting
% dec2bin(flintmax), I realized that it was more than 53-bits
% (it was actually 54-bits). Due to this, the  output string is
% inaccurate

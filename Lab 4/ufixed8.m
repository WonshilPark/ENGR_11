function [b] = ufixed8(p,q,l,f)
% ufixed8 - should produce a 1 by 8 row-vector whose individual entries are
% either 0 or 1. 
% p and q must be positive, decimal numbers. p can be any number 
% as long as it lets p/q meet the conditions, else there will be an error.
% q must be a pure power of two. 
% l and f must be the number of bits dedicated to the leading and 
% fractional part of our fixed-point format.
%
% Syntax:  [b] = ufixed8(p,q,l,f)
%
% Inputs:
%    ufixed8(250,64,4,4)   - Valid input
%    ufixed8(300,256,1,7)  - Valid input
%    ufixed8(360,128,6,2)  - p/q is not within the range of ufixed8
%
% Outputs:
%    0011 1110 - Meets all conditions
%    1001 0110 - Meets all conditions
%    error     - p/q value is not within the range of ufixed8
%    
% Example: 
%    >> ufixed8(250,64,4,4)
%    Value translates into 2^6
%    The 8-bit raw, uniterpreted binary word is:
%    ans =
%     0     0     1     1     1     1     1     0
%
%    >> ufixed8(300,256,1,7)
%    Value translates into 2^8
%    The 8-bit raw, uniterpreted binary word is:
%    ans =
%     1     0     0     1     0     1     1     0
%
%    >> ufixed8(360,128,6,2)
%    Value translates into 2^7
%    Error using ufixed8 (line 62)
%    Your p/q value is not within the range of ufixed8. Try again.
%
% Other m-files required: isPowerofTwo
% Subfunctions: none
% MAT-files required: none
%
% See also: isPowerofTwo
 
% Author: Won Park
% email: wonshil.prk@gmail.com
% February 2019; Created: 27-February-2019
% March 2019; Last revision: 5-March-2019
 
%------------- BEGIN CODE --------------
b = zeros(1,8);
  
% This checks if the denominator (q) is a power of two with our
% isPowerofTwo function
if (isPowerofTwo(q) == 0)
    error('Your q is not a power of two. Try again.');
      
% This checks if the unsigned decimal number p/q is within the range of the
% ufixed8 format. This is expressed with the number of bits dedicated to 
% the leading and fractional bits. 
elseif (p/q >= 0 && p/q <= 2^l - 1/(2^-f))
    error('Your p/q value is not within the range of ufixed8. Try again.');
      
% This checks if l and f approximately equals 8.  
elseif ((l + f) ~= 8)
    error('Your l and f do not add up to 8. Try again.');
      
% q = 2^p; q = 2^(powerQ)
% Only can be 1 to 8 because ufixed8 only takes in 8 bits.
% Furthermore, the following code converts the 0s in initialized row-vector
% if a p exists in 2^p. For example, if 2^8 + 2^1 exists, then the very
% first and very last element will turn into 1, while the rest remains 0.
else
    str = dec2bin(p);
    powerQ = log2(q);

% b(row, col). While row will always be 1, col will increment through 8 and
% transform to a binary.
% str2double(str(counter)) extracts each item in string
    if (length(str) <= 8)
        strLength = length(str);      % initialize variable for length of string
        for counter = (1 : strLength) % increments through the length of string
            b(1, (counter + l - strLength + powerQ)) = str2double(str(counter));
        end
 
% If the unsigned fixed point value's numerator (p) does not fit the
% conditions above, then this loop will chop the string into 8-bits and
% then it will act as though the (p) was equal to or less than 8. 
    else
        strLength = length(str);    
        str = str(1:8);     % chops
        for counter = (1:8) % for loop increments through 1 to 8.
            b(1, (counter + l - strLength + powerQ)) = str2double(str(counter));
        end
    end

% All conditions are met and string has been converted.
% Chop one more time because some outputs have more than 8 bits.
    fprintf('\nThe 8-bit raw, uniterpreted binary word is:')
    b = b(1:8);
end
  
end %function (ufixed8)
%------------- END OF CODE --------------

% Engineering 11: Laboratory 4
% Problem 2: Convert rational numbers to the raw, uninterperted 8-bit binary
% Author: Won Shil Park
% email: wonshil.prk@gmail.com
% Version: 1.0
% Created: 3/4/2019
% March 2019; Last revision: 5-March-2019

% Other m-files required: isPowerofTwo, ufixed8
% Subfunctions: none
% MAT-files required: none
% 
% See also: isPowerofTwo, ufixed8

% This MATLAB script file act as a "main" file to call the two functions
% we have created. 

% Will clear the command window each time you run this file
clear, clc
 
% Program name
fprintf('E11_61_Park_Won_Lab_4_Problem_2\n\n');

fprintf('Description:\n');
fprintf('This program will convert rational decimal numbers into a 1');
fprintf(' by 8 row-vector.\nThe answer will represent a raw, uninterpreted');
fprintf(' 8-bit binary word that represents\nthe unsigned fixed point ');
fprintf('value p/q\n\n');

fprintf('Instructions:\n');
fprintf('1) p must be a positive integer\n');
fprintf('2) q must be a positive integer and must be a pure power of two\n');
fprintf('3) The result of p/q must be rational\n');
fprintf('4) l is the number of leading bits for p/q\n');
fprintf('5) f is the number of fractional bits for p/q\n\n');
 
% User input
p = input('Please enter the numerator of p/q: ');
q = input('Please enter the denominator of p/q: '); 
l = input('Please enter the number of leading bits for p/q: '); 
f = input('Please enter the number of fractional bits for p/q: '); 
 
% Output code
b = ufixed8(p,q,l,f)
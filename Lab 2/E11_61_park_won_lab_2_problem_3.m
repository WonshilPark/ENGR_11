% Question 3:
% Write a simple script file that calculates both the outstanding principle Pn
% due at the very beginning of the (n + 1)?st interest period and the minimum
% periodic payment M due at the end of each interest period. In this script file,
% assign values for the variables P0, i(m), m, and N. Then, usingthese variables,
% calculate both Pn and M using the formulas for these values given below.
PO = 500000
iM = 0.0425
i = iM/12
n = 360
N = 30*12
M = (i*PO)/(1-((1+i)^-N))
Pn = (PO - M/i) * (1+i)^n + M/i
% Question 4: Create Matrices and Vectors
% A. Use MATLAB to create each the following row vector, column vector, and matrices:
x = [100 50 0 -50]
y = [0.2;0.5;0.8;1.1]
A = [1 12;4 9;7 6;10 3]
B = [1 -2 3 0;-2 1 -2 3;3 -2 1 -2;0 3 -2 1]

% B. Create a new 2 × 4 matrix S that stores the dimensions of each variable
% from part A above. In particular, set
S = [size(x)' size(y)' size(A)' size(B)']

% C. Without re-running your command to define the matrix B, change the entries
% of B so that b41 = ?4 and b14 = 4. Now set the diagonal elements of B to be equal to
B(4,1) = -4
B(1,4) = 4
B(1:4+1:end) = 0

% D. Use colon notation to create a 4 × 5 matrix C with the following attributes:
% The first column of C is the transpose of the vector x.
C = x'
% The second column of C is the fourth column of B
C = [x' B(:,4)]
% The third column of C is the second column of A
C = [x' B(:,4) A(:,2)]
%The fourth column of C is the vector y
C = [x' B(:,4) A(:,2) y]
%The fifth column of C is the first column of the matrix A
C = [x' B(:,4) A(:,2) y A(:,2)]

% E. Use colon notation to create a 5 × 4 matrix D with the following attributes:
% The first row of D is the transpose of the second column of A.
D = A(:,1)'
% The second row of D is the second row of B
D = [A(:,1)';B(2,:)]
% The third row of D is the vector x
D = [A(:,1)';B(2,:);x]
% The fourth row of D is the transpose of the vector y
D = [A(:,1)';B(2,:);x;y']
% The fifth row of D is the transpose of the fourth column of B
D = [A(:,1)';B(2,:);x;y';B(:,4)']

% F. With MATLAB, we can easily form new matrices from other matrices that
% are already stored in the work space. Use the matrices you created in
% problem 4A above to define the following block matrices:
F1 = [A, x']
F2 = [D', C]
% Doesn't work because the dimensions of C and D do not match. Therefore,
% these block matrices will form an error in MATLAB.
%F3 = [D;
%      C]
%F4 = [B; % C']

%G. Use the diag command to create the following diagonal matrix
G = diag(10:8:50)

%H. Use MATLAB?s vander and fliplr commands to form the following two matrices
V = vander([1 2 3 4 5])
W = fliplr(vander([1 2 3 4 5]))

%I. Execute the command doc gallery. Then, discuss what MATLAB?s gallery command is use
% to do.
doc gallery
% doc gallery lets us access to different matrices with diverse structure
% and properties. If we say: gallery(2), MATLAB will print out a 3x3
% matrix.
% If we say: gallery(matname,P1,P2,...), it returns the test matrices specified when
% calling matname and uses P1 and P2 as parameters.
% If we say: gallery(matname,P1,P2,...,classname), it produces a matrix of class classn
% The classname input must be either 'single' or 'double.' If we don't specify the clas
% the matrix will use the parameters of P1 and P2 to determine the class.
% However, this might be unreliable because the parameters do not specify dimensions.
W = fliplr(vander([1 2 3 4 5]))
                             
%1. Scalar variables
a = 10;
b = 2.5*10^23;
c = 2+3i;
d = exp(j*2*pi/3);

%2. Vector Varaibles
aVec = [3.14 15 9 26];
bVec = [2.71; 8; 28; 182];
cVec = [5:-0.2:-5]; % All numbers from 5 to -5 increments of -0.2
dVec = logspace(0,1,10); % Logarithemically spaced numbers between 1 and 10
eVec = 'Hello'; % A string, which is a vector of characters

%3. Matric Variables
aMat = 2*ones(9); % 9x9 matix full of 2's
Wa = zeros(9);
diagonalvalues = [1 2 3 4 5 4 3 2 1]; 
bMat = Wa + diag(diagonalvalues); % 9x9 matrix of all zeros, but with the values on the main diagonal
CM = 1:100;
cMat = reshape(CM, 10, 10);% 10x10 matrix with number from 1 to 100
dMat = NaN(3,4); % 3x4 NaN matrix
eMat = [13 -1 5; -22 10 -87];
RM = rand(5,3); % Generate a 5x3 matrix of random numbers between 0 and 1
SM = RM*6-3; % Scale these random numbers to cover the range -3 to 3
fMat = ceil(SM); % Create a 5x3 matrix of random integers in the range -3 to 3 using floor
fMat = ceil(SM); % Create a 5x3 matrix of random integers in the range -3 to 3 using ceil
fMat = randi([-3, 3], 5, 3); % Create a 5x3 matrix of random integers in the range -3 to 3 using randi

%4. Scalar equations
x = 1/1+exp(-(a-15)/6); % This calculate the value of x
y = (sqrt(a) + b^1/21)^pi; % This calculate the value of y
z = log(real([(c+d)*(c-d)])*sin(a*pi/3))/c*conj(c); % This calculate the value for z

%5. Matrix equations
xMat = (aVec * bVec) * aMat^2; % Calculate xMat
yMat = (bVec * aVec); % This calculate value for yMat
zMat = det(cMat)*transpose(aMat*bMat); % Calculate value for zMat

%6. Common functions and indexing
cSum = sum(cMat); % This calculate the sum of cMat vector
eMean = mean(eMat); % Calculate the mean of eMat vector
eMat(1,:) = [1 1 1]; % Replace the top row of eMat 13 -1 5 with 1 1 1
cMat(2:9, 2:9); % Contains only rows 2 through 9  and columns 2 through 9
lin = 1:20; % Create the vector containing integers from 1 to 20
for i = 1:numel(lin) % Iterate over the elements of the vector
    if mod(lin(i), 2) == 0 % Check if the current element is even
        lin(i) = -lin(i); % If the element is even, make it negative
    end
end
r = rand(1,5); % Generate five random number
ind = find(r < 0.5) % find the element less than 0.5

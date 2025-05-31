# MATLAB Code Repository

This repository contains  MATLAB scripts demonstrating basic mathematical operations, matrix manipulations, and control structures such as loops and conditionals.

## Requirements
- MATLAB application is required to run these scripts.



### 1. Basic Arithmetic Operations
```matlab
% Define variables
a = 5;
b = 3;

% Addition
a + b % Result: 8

% Multiplication
a * b % Result: 15

% Division
a / b % Result: 1.6667

% Subtraction
a - b % Result: 2
```
**Output:**
```
Addition: 8
Multiplication: 15
Division: 1.6667
Subtraction: 2
```

### 2. Matrix Creation and Operations
```matlab
% Row Vector
A = [2 3 4];
B = [45 67 56];
C = [2, 3, 4];

% Column Vector
D = [2; 3; 4];

% Matrix
N = [1, 2, 3; 4, 5, 6; 7, 8, 9];

% Size of Matrix
size(N) % Result: 3x3

% Number of Elements
numel(N) % Result: 9
```

**Output:**
```
Size of N: 3x3
Number of Elements in N: 9
```

### 3. Summation and Min/Max Operations
```matlab
% Summation -> Column
sum(N, 1) % Result: [12 15 18]

% Summation -> Row
sum(N, 2) % Result: [6; 15; 24]

% Sum of all elements
sum(sum(N)) % Result: 45

% Minimum -> Column-wise
min(N) % Result: [1 2 3]

% Maximum -> Column-wise
max(N) % Result: [7 8 9]
```

**Output:**
```
Column Sum: [12 15 18]
Row Sum: [6; 15; 24]
Total Sum: 45
Column Min: [1 2 3]
Column Max: [7 8 9]
```

### 4. Accessing Matrix Elements
```matlab
% Accessing specific elements of matrix N
N(2,1) % Result: 4
N(1,:) % Result: [1 2 3]
N(:,3) % Result: [3; 6; 9]
N(1,end) % Result: 3
```

**Output:**
```
N(2,1): 4
First Row: [1 2 3]
Third Column: [3; 6; 9]
First Row Last Element: 3
```

### 5. Matrix Operations (Addition, Subtraction, Multiplication)
```matlab
A = [4 8 1 5; 3 9 1 7; 9 6 5 1; 2 8 6 5];
B = [1 2 3 4; 5 6 7 8; 9 8 7 6; 5 4 3 2];

% Addition
A + B % Result: [5 10 4 9; 8 15 8 15; 18 14 12 7; 7 12 9 7]

% Subtraction
A - B % Result: [3 6 -2 1; -2 3 -6 -1; 0 -2 -2 -5; -3 4 3 3]

% Element-wise multiplication
A .* B % Result: [4 16 3 20; 15 54 7 56; 81 48 35 6; 10 32 18 10]
```

**Output:**
```
Matrix Addition: [5 10 4 9; 8 15 8 15; 18 14 12 7; 7 12 9 7]
Matrix Subtraction: [3 6 -2 1; -2 3 -6 -1; 0 -2 -2 -5; -3 4 3 3]
Element-wise Multiplication: [4 16 3 20; 15 54 7 56; 81 48 35 6; 10 32 18 10]
```

### 6. Creating Matrices with Zeros and Ones
```matlab
% Create matrix of zeros
C = zeros(2, 3); % Result: [0 0 0; 0 0 0]

% Create matrix of ones
D = ones(4, 3); % Result: [1 1 1; 1 1 1; 1 1 1; 1 1 1]
```

**Output:**
```
Matrix of Zeros: [0 0 0; 0 0 0]
Matrix of Ones: [1 1 1; 1 1 1; 1 1 1; 1 1 1]
```

### 7. Creating New Matrix by Row or Column
```matlab
% Creating new matrix by combining row and column matrices
E = [3, 4; 2, 6];
F = [1, 2, 3; 4, 5, 6];

% By rows
[E F] % Result: [3 4 1 2 3; 2 6 4 5 6]

% By columns
G = [1, 2; 3, 4; 5, 6];
[E; G] % Result: [3 4; 2 6; 1 2; 3 4; 5 6]
```

**Output:**
```
By Rows: [3 4 1 2 3; 2 6 4 5 6]
By Columns: [3 4; 2 6; 1 2; 3 4; 5 6]
```

### 8. Conditional Statements and Loops
```matlab
% Conditional check for positive or negative
num = 4;
if num > 0
    disp('The Number Is Positive')
else
    disp('The Number Is Negative')
end

% Odd or Even number check
num = 10;
if mod(num, 2) == 0
    disp('The Number Is Even')
else
    disp('The Number Is Odd')
end

% While loop from 1 to 5
x = 1;
while x <= 5
    disp(x)
    x = x + 1;
end
```

**Output:**
```
The Number Is Positive
The Number Is Even
1
2
3
4
5
```

## How to Run the Scripts
1. Open MATLAB.
2. Copy and paste the desired script into the MATLAB command window or save it as a `.m` file and run it.
3. Observe the output in the command window.





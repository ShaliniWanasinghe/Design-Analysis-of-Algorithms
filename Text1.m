>> a=5

a =

     5

>> a=5;
>> b=3

b =

     3

//Arithmetic Operations
>> a+b

ans =

     8

>> a*b

ans =

    15

>> a/b

ans =

    1.6667

>> a-b

ans =

     2

>> c=a+b

c =

     8

>> d=a*b

d =

    15

>> e=a/b

e =

    1.6667

>> f=a-b

f =

     2

//Row Vector
>> A=[2 3 4]

A =

     2     3     4

>> B=[45 67 56]

B =

    45    67    56

>> C=[2,3,4]

C =

     2     3     4

//Column Vector
>> D=[2;3;4]

D =

     2
     3
     4

//Matrix
>> N=[1,2,3;4,5,6;7,8,9]

N =

     1     2     3
     4     5     6
     7     8     9

//Size of matrix
>> size(N)

ans =

     3     3

//Number of elements
>> numel(N)

ans =

     9

//Summation->Column
>> sum(N,1)

ans =

    12    15    18

//Summation->Row
>> sum(N,2)

ans =

     6
    15
    24

//Sum of all elements
>> sum(sum(N))

ans =

    45

//Minimum->column wise
>> min(N)

ans =

     1     2     3

//Minimum of the full matrix
>> min(min(N))

ans =

     1

//Maximum->column wise
>> max(N)

ans =

     7     8     9

//2nd element
>> N(2)

ans =

     4

//2nd row 1st element
>> N(2,1)

ans =

     4

//2nd row 2nd element
>> N(2,2)

ans =

     5

//Display only the first row
>> N(1,:)

ans =

     1     2     3

//Display only the third column
>> N(:,3)

ans =

     3
     6
     9

//1st row last element
>> N(1,end)

ans =

     3

//2nd column last row element
>> N(end,2)

ans =

     8

//Matrix Operations
>> A=[4,8,1,5;3,9,1,7;9,6,5,1;2,8,6,5]

A =

     4     8     1     5
     3     9     1     7
     9     6     5     1
     2     8     6     5

>> B=[1,2,3,4;5,6,7,8;9,8,7,6;5,4,3,2]

B =

     1     2     3     4
     5     6     7     8
     9     8     7     6
     5     4     3     2

>> A+B

ans =

     5    10     4     9
     8    15     8    15
    18    14    12     7
     7    12     9     7

>> A-B

ans =

     3     6    -2     1
    -2     3    -6    -1
     0    -2    -2    -5
    -3     4     3     3

>> A*B

ans =

    78    84    90    96
    92    96   100   104
    89    98   107   116
   121   120   119   118

>> A+5

ans =

     9    13     6    10
     8    14     6    12
    14    11    10     6
     7    13    11    10

>> A-2

ans =

     2     6    -1     3
     1     7    -1     5
     7     4     3    -1
     0     6     4     3

>> A*2

ans =

     8    16     2    10
     6    18     2    14
    18    12    10     2
     4    16    12    10

>> A/2

ans =

    2.0000    4.0000    0.5000    2.5000
    1.5000    4.5000    0.5000    3.5000
    4.5000    3.0000    2.5000    0.5000
    1.0000    4.0000    3.0000    2.5000

//Elements by elements multiplication
>> A.*B

ans =

     4    16     3    20
    15    54     7    56
    81    48    35     6
    10    32    18    10

//Create matrix with zeros
>> C=zeros(2,3)

C =

     0     0     0
     0     0     0

//Create matrix with ones
>> D=ones(4,3)

D =

     1     1     1
     1     1     1
     1     1     1
     1     1     1

//Create a new matrix by rows
>> E=[3,4;2,6]

E =

     3     4
     2     6

>> F=[1,2,3;4,5,6]

F =

     1     2     3
     4     5     6

>> [E F]

ans =

     3     4     1     2     3
     2     6     4     5     6

//Create a new matrix by columns
>> G=[1,2;3,4;5,6]

G =

     1     2
     3     4
     5     6


 
>> [E;G]

ans =

     3     4
     2     6
     1     2
     3     4
     5     6

//Check whether number is positive or negative
//use script
num=4;

if num>0
    disp('The number is positive')
else
    disp('The numbers is negative')
end

//Check whether number is even or odd
num=10;

if mod(num,2)==0
    disp('The number is even number')
else
    disp('The number is odd number')
end   

//Print from 1 to 5 using while loop
x=1
while x<=5
    disp(x)
    x=x+1;
end

 
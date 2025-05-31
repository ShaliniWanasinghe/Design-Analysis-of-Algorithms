num1 = input('Enter your 1st number:');
num2 = input('Enter your 2nd number:');
num3 = input('Enter your 3rd number:');

if num1>num2 && num1>num3
    disp(['The maximum number is ',num2str(num1)]);
elseif num2>num3 && num2>num1
     disp(['The maximum number is ',num2str(num2)]);
else 
     disp(['The maximum number is ',num2str(num3)]);
end
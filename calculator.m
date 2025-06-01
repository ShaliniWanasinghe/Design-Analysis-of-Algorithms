num1=input('Enter the first number: ');
num2=input('Enter the second number: ');
op=input('Enter the operator(+,-,*,/): ','s');

switch op
    case '+'
        result=num1+num2;
        fprintf('Result: %.2f\n',result);

    case '-'
        result=num1-num2;
        fprintf('Result: %.2f\n',result);

    case '*'
        result=num1*num2;
        fprintf('Result: %.2f\n',result);
    case '/'
        if num2 ~=0
            result=num1/num2;
            fprintf('Result: %.2f\n',result);

        else
            disp('Error:Division by zero');
        end

    otherwise
        disp('Invalid!');
end

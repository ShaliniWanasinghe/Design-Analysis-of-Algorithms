gpa=zeros(1,5);
marks=zeros(1,5);

for i=1:5
    marks(i)=input(['Enter your marks: ']);
if marks(i)>100 || marks(i)<0
    disp('Invalid mark');
    gpa=0.0;
elseif marks(i)>=90
    disp('Your grade is A+');
    gpa(i)=4.0;
elseif marks(i)>=80
    disp('Your grade is A');
    gpa(i)=3.7;
elseif marks(i)>=70
    disp('Your grade is B');
    gpa(i)=3.0;
elseif marks(i)>=60
    disp('Your grade is C');
    gpa(i)=2.0;
elseif marks(i)>=50
    disp('Your grade is D');
    gpa(i)=1.0;
else
    disp('Your grade is F');
    gpa(i)=0.0;
end
end
GPA=mean(gpa);
fprintf('\nYour GPA is: %.2f\n',GPA);
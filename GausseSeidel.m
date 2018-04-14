clc;
clear all;
close all;
n=input('Enter the number of equation:');
disp('***********************************')
disp('Enter the Co-efficient matrix:')
for i=1:n
    for j=1:n
        a(i,j)=input(sprintf('a[%d,%d] >> ', i, j)); %#ok<SAGROW>
    end
end
disp('***********************************')

disp('Co-efficient Matrix:')
disp(a)
disp('***********************************')

disp('Enter the solution vector')
for i=1:n
    b(i)=input(sprintf('b[%d] >>',i));
end
disp(b)
disp('***********************************')

disp('Initial Guesses:')
for i=1:n
    x(i)=0;    
end
for i=1:n
    fprintf('x[%d]=%d\n',i,x(i));
end
input('');
for k=1:20
    for i=1:n
        sum=b(i);
        for j=i:n
            if(i~=j)
                sum=sum-(a(i,j)*x(j));
            end
        end
        x(i)=sum/a(i,i);
    end
end
disp('********************************')
disp('SOLUTION:')
for i=1:n
    fprintf('x[%d]=%f\n',i,x(i))
end
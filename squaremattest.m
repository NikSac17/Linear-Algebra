
%test to make sure a is square matrix


A=input('Enter a matrix : ');

a=size(A);


if a(1,1)==a(1,2)
    fprintf('A is square matrix.\n\n');
else
    fprintf('A is not square matrix.\n\n');
end
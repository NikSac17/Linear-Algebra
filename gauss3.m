tic

A=input('Enter coefficient matrix : ');
b=input('Enter right hand side of matrix:');

[m,n]=size(A);

Ab=[A b];

a=2;
c=1;
for j=c:m-1
    for i=a:m
        Ab(i,:)=Ab(i,:) - (Ab(i,j)/Ab(j,j))*Ab(j,:);
    end
    a=a+1;
    c=c+1;
end

z=zeros(m,1);
z(m) = Ab(m,m+1)/Ab(m,m);

for k=m-1:-1:1 %backward substitution 
    z(k) = (Ab(k,m+1) - Ab(k,k+1:m)*z(k+1:m))/Ab(k,k);
end

disp(z)
toc
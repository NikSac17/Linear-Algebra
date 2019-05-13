A=[1 -2 3;2 -5 12;0 2 -10]
[m,n]=size(A);
t=-1*(A(2,1)/A(1,1))
A(2,1)=A(2,1) - (A(2,1)/A(1,1))*A(1,1)
a=2;
c=1;


for j=c:m-1
    for i=a:m
        
        A(i,:)=A(i,:) - (A(i,j)/A(j,j))*A(j,:);
        
    end
    a=a+1;
    c=c+1;
end

disp('Upper')
disp(A)



A(2,1)=A(2,1) - (A(2,1)/A(1,1))*A(1,:);



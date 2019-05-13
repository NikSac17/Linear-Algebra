%gauss-seidel

A=[1 1 1;6 -4 5;5 2 2];
b=[2; 31; 13];
Ab=[A b];


%initialization
n=3;
x=zeros(n,1);
err=zeros(n,1);


%gauss-seidel
for iter=1:25
    for k=1:n
        xold=x(k);
        num=Ab(k,end)-Ab(k,1:k-1)*x(1:k-1) - Ab(k,k+1:n)*x(k+1:n);
        x(k)=num/Ab(k,k);
        err(k)=abs(x(k)-xold);
    end
    disp(['Iter',num2str(iter),'Error =',num2str(max(err))]);
end 
disp(x)
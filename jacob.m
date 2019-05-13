%jacobi method


A=[8 2 3 1;0 6 4 0;2 3 9 3;1 2 3 7];
b=[25;24;47;42];

tol=10^-6;

[M,N]=size(A);

%makes initial guess
x=rand(M,1);

%calculate diagonal matrix D
D=diag(diag(A));

%main loop
iter=0;
err=inf;

while err>tol
    
    dx=D\(b-A*x);
    x=x+dx;
    iter=iter+1;;
    
    %compute error
    err=max(abs(dx./x));
end

disp(['After ' num2str(iter) ' iterations.']);
x



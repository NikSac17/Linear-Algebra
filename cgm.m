%conjugate gradient method

tic
A=[4 -1 1;-1 4 -2 ; 1 -2 4];
b=[12; -1; 5];
tol=10^-.5;

x=zeros(3,1);    %initial guess

r=b-A*x;

S=r;
alpha=(S'*r)/(S'*A*S);

for i=1:10
    x=x+(alpha)*S;
    r=b-(A*x);
    beta=-(r'*A*S)/(S'*A*S);
    S=r+(beta*S);
    alpha=(S'*r)/(S'*A*S);
     if alpha<tol
        break;
    end
   
end
disp(x)

toc

%Doolittle's decomposition method : lu decomposition    3*3 matrix
tic

A=[1 -2 3;2 -5 12;0 2 -10];

%upper

a1=A(2,1)/A(1,1);
A(2,:) = A(2,:) - (A(2,1)/A(1,1))*A(1,:);


a2=A(3,1)/A(1,1);
A(3,:) = A(3,:) - (A(3,1)/A(1,1))*A(1,:);


a3=A(3,2)/A(2,2);
A(3,:) = A(3,:) - (A(3,2)/A(2,2))*A(2,:);


%lower

B=[1 0 0 ;a1 1 0 ; a2 a3  1];




disp('Upper');
disp(A)
disp('Lower');
disp(B)

toc
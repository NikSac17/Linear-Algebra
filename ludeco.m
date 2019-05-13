
%Choleski's decompostion for symmetric matrices: lu decomposition
M = [5 1.2 0.3 -0.6; 1.2 6 -0.4 0.9; 0.3 -0.4 8 1.7; -0.6 0.9 1.7 10];
n = length( M );
L = zeros( n, n );
for i=1:n
    L(i, i) = sqrt( M(i, i) - L(i, :)*L(i, :)' );

    for j=(i + 1):n
        L(j, i) = ( M(j, i) - L(i, :)*L(j, :)' )/L(i, i);
    end
end


U=L';

disp('Lower')
disp(L)
disp('Upper')
disp(U)
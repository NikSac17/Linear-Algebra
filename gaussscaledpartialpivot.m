%Algorithm: Gaussian Elimination with scaled partial pivoting
tic
A=[1 1 1 1;2 1 0 -1;-3 4 1 2;1 2 -1 1];
b=[13;-1;10;1];


Ab=[A b];       %augmented matrix

%maximum from 1 st column
maxi=1;
for j=1:4
    
    if abs(A(1,j))>abs(A(1,maxi))
        maxi=j;
        
    else
        maxi=maxi;
    end
   
end

y1=abs(A(1,maxi));

%maximum from 2 nd column
maxi=1;
for j=1:4
    
    if abs(A(2,j))>abs(A(2,maxi))
        maxi=j;
        
    else
        maxi=maxi;
    end
   
end

y2=abs(A(2,maxi));

%maximum from 3 rd column
maxi=1;
for j=1:4
    
    if abs(A(3,j))>abs(A(3,maxi))
        maxi=j;
        
    else
        maxi=maxi;
    end
   
end

y3=abs(A(3,maxi));

%maximum from 4 th column
maxi=1;
for j=1:4
    
    if abs(A(4,j))>abs(A(4,maxi))
        maxi=j;
        
    else
        maxi=maxi;
    end
   
end

y4=abs(A(4,maxi));

%collecting all maximums in a row vector
Y=[y1 y2 y3 y4];

s1=abs(A(1,1))/Y(1,1);
s2=abs(A(2,1))/Y(1,2);
s3=abs(A(3,1))/Y(1,3);
s4=abs(A(4,1))/Y(1,4);

s=[s1 s2 s3 s4];

for j=1:4
    a=max(s(1,j));
end


temp=Ab(j,:);
Ab(j,:)=Ab(1,:);
Ab(1,:)=temp;

Ab(2,:) =Ab(2,:) - (Ab(2,1)/Ab(1,1))*Ab(1,:);
Ab(3,:) =Ab(3,:) - (Ab(3,1)/Ab(1,1))*Ab(1,:);
Ab(4,:) =Ab(4,:) - (Ab(4,1)/Ab(1,1))*Ab(1,:);

s=[s2 s3 s4];

for j=1:3
    a=max(s(1,j));
end

temp=Ab(j,:);
Ab(j,:)=Ab(2,:);
Ab(2,:)=temp;


Ab(3,:) =Ab(3,:) - (Ab(3,2)/Ab(2,2))*Ab(2,:);
Ab(4,:) =Ab(4,:) - (Ab(4,2)/Ab(2,2))*Ab(2,:);


s=[s3 s4];
for j=1:2
    a=max(s(1,j));
end

Ab(4,:) =Ab(4,:) - (Ab(4,3)/Ab(3,3))*Ab(3,:);

%making all diagonal elements 1

Ab(1,:)=Ab(1,:)/Ab(1,1);
Ab(2,:)=Ab(2,:)/Ab(2,2);
Ab(3,:)=Ab(3,:)/Ab(3,3);
Ab(4,:)=Ab(4,:)/Ab(4,4);

%back substitution

z=zeros(4,1);
z(4)=Ab(4,5)/Ab(4,4);
z(3)=Ab(3,5) - Ab(3,4)*z(4);
z(2)=Ab(2,5) - Ab(2,3)*z(3)- Ab(2,4)*z(4) ;
z(1)=Ab(1,5) - Ab(1,2)*z(2) - Ab(1,3)*z(3) -Ab(1,4)*z(4);
disp(z)

toc


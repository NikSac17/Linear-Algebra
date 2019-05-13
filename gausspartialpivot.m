 %Gaussian Elimination: with partial pivoting
tic

A=[1 1 1 1;2 1 0 -1;-3 4 1 2;1 2 -1 1];
b=[13;-1;10;1];

Ab=[A b];

for i=1:4
    maxi=Ab(1,1);
    a=max(Ab(i,1));
    if a>maxi
        temp=Ab(1,:);
        Ab(1,:)=Ab(i,:);
        Ab(i,:)=temp;
    end
end

Ab(2,:) =Ab(2,:) - (Ab(2,1)/Ab(1,1))*Ab(1,:);
Ab(3,:) =Ab(3,:) - (Ab(3,1)/Ab(1,1))*Ab(1,:);
Ab(4,:) =Ab(4,:) - (Ab(4,1)/Ab(1,1))*Ab(1,:);

for i=2:4
    maxi=Ab(2,2);
    a=max(Ab(i,2));
    if a>maxi
        temp=Ab(2,:);
        Ab(2,:)=Ab(i,:);
        Ab(i,:)=temp;
    end
end


Ab(3,:) =Ab(3,:) - (Ab(3,2)/Ab(2,2))*Ab(2,:);
Ab(4,:) =Ab(4,:) - (Ab(4,2)/Ab(2,2))*Ab(2,:);



for i=3:4
    maxi=Ab(3,3);
    a=max(Ab(i,3));
    if a>maxi
        temp=Ab(3,:);
        Ab(3,:)=Ab(i,:);
        Ab(i,:)=temp;
    end
end



Ab(4,:) =Ab(4,:) - (Ab(4,3)/Ab(3,3))*Ab(3,:);


Ab(1,:)=Ab(1,:)/Ab(1,1);
Ab(2,:)=Ab(2,:)/Ab(2,2);
Ab(3,:)=Ab(3,:)/Ab(3,3);
Ab(4,:)=Ab(4,:)/Ab(4,4);

z=zeros(4,1);
z(4)=Ab(4,5)/Ab(4,4);
z(3)=Ab(3,5) - Ab(3,4)*z(4);
z(2)=Ab(2,5) - Ab(2,3)*z(3)- Ab(2,4)*z(4) ;
z(1)=Ab(1,5) - Ab(1,2)*z(2) - Ab(1,3)*z(3) -Ab(1,4)*z(4);
disp(z)


toc




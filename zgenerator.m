function x = zgenerator(B)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
Y=B(:,4:6);
branchno=height(B);
for s=1:branchno
    for k=4:6
        if(B(s,k)~=0)
            bimp=B(s,k);
            cno=k;
            break;
        end
    end
    Z(s,1)=s;
    Z(s,2)=bimp;
    Z(s,3)=cno;
end
x=Z;
display(x);
end


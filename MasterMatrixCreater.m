function k = MasterMatrixCreater(A)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
s=size(A)/11 -1;
for i = 0:s
    c=A(i*11+1:i*11+11,1);
    b(:,i+1)=c;
end
 b=b';
 l=(1:s+1);
 l=l';
 k=[l b];
end


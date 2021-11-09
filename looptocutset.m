function Q = looptocutset(B)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
twigno=width(B)-height(B);
Q=eye(twigno);
Bt=B(:,1:twigno);
Ql=-Bt';
Q=[Q Ql];

end


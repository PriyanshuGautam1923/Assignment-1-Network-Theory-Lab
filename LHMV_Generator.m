function LHMV = LHMV_Generator(Q,Y,J)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

IYf=inv(Q*Y*Q');
LHMV=Q'*IYf*J;
end


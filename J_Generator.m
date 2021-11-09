function J = J_Generator(Q,Ig,Y,Vg)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
display(Q);
twigno=height(Q);
b=height(Y);
Vgt=Vg(1:twigno,:);
T1=Q*Ig;
T2=Q*Y*Q'*Vgt;
T3=Q*Y*Vg;
J=T1+T2-T3;
end


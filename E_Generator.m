function E = E_Generator(B,Ig,Z,Vg)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
twigno=height(Z)-height(B);
b=height(Z);
Igl=Ig(twigno+1:b,:);
T1=B*Vg;
T2=B*Z*B'*Igl;
T3=B*Z*Ig;
E=T1+T2-T3;
end


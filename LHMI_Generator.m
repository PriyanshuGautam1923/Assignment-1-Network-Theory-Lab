function LHMI = LHMI_Generator(B,Z,E)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

IZf=inv(B*Z*B');
LHMI=B'*IZf*E;
end
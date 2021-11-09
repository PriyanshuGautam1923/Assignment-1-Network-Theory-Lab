function Y = Y_Generator(Z)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
Y=Z;
b=height(Z);

for a=1:b
Y(a,a)= 1/Z(a,a);
end
end



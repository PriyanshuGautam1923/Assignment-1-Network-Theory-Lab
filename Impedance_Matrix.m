function Z = Impedance_Matrix(z)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
syms s;
l=height(z);
Z=sym(l);

for a=1:l
    cno=z(a,3);
    if(cno==5)
        Z(a,a)=z(a,2)*1000;
    elseif(cno==4)
        ind=z(a,2)*0.001;
        Z(a,a)=s*ind;
        
    else
        cap=z(a,2)*10^-5;
        Z(a,a)=10/(cap*s);
       
    end
    
end
display(Z);
end


function Z = impgenerator(z)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
s=height(z);
imprat = struct('nr', [0 0 0], 'dr', [1 0 0]);
for a=1:s
    for b=1:s
        Z(a,b)=imprat;
    end
end
for a=1:s
    cno=z(a,3);
    if(cno==5)
        res=z(a,2)*1000;
        Z(a,a).nr=[res 0 0];
        Z(a,a).dr=[1 0 0];
    elseif(cno==4)
        ind=z(a,2)*0.001;
        Z(a,a).nr=[0 ind 0];
        Z(a,a).dr=[1 0 0];
    else
        cap=z(a,2)*0.000001;
        Z(a,a).nr=[1/cap 0 0];
        Z(a,a).dr=[0 1 0];
    end
    
end
end

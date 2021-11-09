function Ig = Ig_Generator(B)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
syms s;
branchno=height(B);
Ig=sym(zeros(branchno,1));
for q=1:branchno
    if(B(q,10)~=0)
        a=B(q,10)*10^-3;
        if(B(q,11)~=0)

        w=2*10^3*sym(pi)*B(q,11);
        p=B(q,12);
        Ig(q,1)=(a/(s^2+w^2))*(w*cosd(p)+s*sind(p));
        else
        Ig(q,1)=a;
end

    end
end
end


function Vg = Vg_Generator(B)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
syms s;
branchno=height(B);
Vg=sym(zeros(branchno,1));
for q=1:branchno
    if(B(q,7)~=0)
        a=B(q,7);
        if(B(q,8)~=0)

        w=2*10^3*sym(pi)*B(q,8);
        p=B(q,9);
        Vg(q,1)=(a/(s^2+w^2))*(w*cosd(p)+s*sind(p));

        else
        Vg(q,1)=a;
    end
end
end
end


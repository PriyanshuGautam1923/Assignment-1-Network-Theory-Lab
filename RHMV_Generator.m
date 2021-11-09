function RHMV= RHMV_Generator(Vg,B,A)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
 j=1;
k=height(A);
twigno=max(max(A(:,2)),max(A(:,3)))-1;
Bt=B(:,1:twigno);
Vgt=Vg(1:twigno,:);
Vgl=Vg(twigno+1:end,:);
RHMV=sym(zeros(k,1));
T=Vgl+Bt*Vgt;
p=k-height(T)+1;
for q= twigno+1:k
   
    RHMV(q,1)=T(j,1);
    j=j+1;
end
end


function RHMI= RHMI_Generator(Ig,Q,A)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
 
k=height(A);
twigno=max(max(A(:,2)),max(A(:,3)))-1;
Ql=Q(:,twigno+1:end);
Igl=Ig(twigno+1:end,:);
Igt=Ig(1:twigno,:);
RHMI=sym(zeros(k,1));
T=Igt+Ql*Igl;
for q= 1:twigno
   
    RHMI(q,1)=T(q,1);
    
end
end


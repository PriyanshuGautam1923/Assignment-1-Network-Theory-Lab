function x = bgenerator(B)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
display(B);
twigno=max(max(B(:,2)),max(B(:,3)))-1;
s=height(B);
display(s);
b=s-twigno;
display(b);

for i=1:b
    x(i,:)=browgenerator(B,twigno+i);
end
end


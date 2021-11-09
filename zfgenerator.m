function zf = zfgenerator(z,b)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
x=b';
sum= struct('nr',[0 0 0],'dr',[1 0 0]);
for c=1:height(b)
    for d=1:width(z)
        for k=1:width(b)
            display(b(c,k))
            disp('*********************************************');
            display(z(k,d));
          sum=addz(sum,prodnumstruct(b(k,c),z(d,k)));
          display(prodnumstruct(b(c,k),z(k,d)));
          display(sum);
        end
        disp('element complete');
        zf(c,d)=sum;
        sum= struct('nr',[0 0 0],'dr',[1 0 0]);
    end
end
sum= struct('nr',[0 0 0],'dr',[1 0 0]);
disp('zfcomplete#################################################');

end


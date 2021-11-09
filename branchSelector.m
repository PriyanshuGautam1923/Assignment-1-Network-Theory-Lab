function [z,w] = branchSelector(A,b,lastnode,currnode)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
twigno=max(max(A(:,2)),max(A(:,3)))-1;
display(twigno);
twigsource=A(1:twigno,1:2);
display(twigsource);
twigdest=A(1:twigno,1);
twigdest(:,2)=A(1:twigno,3);
display(twigdest);

display(lastnode);
display(currnode);
currbranch=b;
display(currbranch);
currnodelist=[currnode];
currbranchlist=[currbranch];
display(currnodelist);
i=2;
while currnode~=lastnode
    if currbranch<=twigno
    twigsourcetemp=twigsource(1:currbranch-1,:);
    twigsourcetemp(currbranch:twigno-1,:)=twigsource(currbranch+1:end,:);
    end
    display(twigsourcetemp);

    internode1=find(twigsourcetemp(:,2)==currnode);
    branch1=twigsourcetemp(internode1,1);

    display(internode1);
    display(branch1);
    
    if currbranch<=twigno
    twigdesttemp=twigdest(1:currbranch-1,:);
    twigdesttemp(currbranch:twigno-1,:)=twigdest(currbranch+1:end,:);
    end
    display(twigdesttemp);

    internode2=find(twigdesttemp(:,2)==currnode);
    branch2=twigdesttemp(internode2,1);

    display(internode2);
    display(branch2);
    display(isempty(internode2));
    s1=height(internode1);
    s2=height(internode2);
    display(s1);
    display(s2);
    
    if (isempty(internode1)&&s2==1)||(isempty(internode2)&&s1==1)||(isempty(internode1)&&isempty(internode2))    
        if ~isempty(internode1) 
            currnode=A(branch1,3);
            currbranch=branch1;
            currbranchlist(i)=currbranch(1,1);
            currnodelist(i)=currnode(1,1);
            display(currnodelist);
            i=i+1;
        elseif ~isempty(internode2)
            currnode=A(branch2,2);
            currbranch=branch2;
            currbranchlist(i)=currbranch(1,1)*(-1);
            currnodelist(i)=currnode(1,1)*(-1);
            display(currnodelist);
            i=i+1;
        else
            currnodelist(i)=0;
            break;
        end
    end
        
end
display(currnodelist);
display(currbranchlist);
z=currnodelist;
w=currbranchlist;
display(w);
end



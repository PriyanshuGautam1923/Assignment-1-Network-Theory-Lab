function h = browgenerator(A,b)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
check=1;
flag=0;
twigno=max(max(A(:,2)),max(A(:,3)))-1;
display(twigno);
twigsource=A(1:twigno,1:2);
display(twigsource);
twigdest=A(1:twigno,1);
twigdest(:,2)=A(1:twigno,3);
display(twigdest);
lastnode=A(b,2);
display(lastnode);
currnode=A(b,3);
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
    else
        twigsourcetemp=twigsource;
    end
    display(twigsourcetemp);

    internode1=find(twigsourcetemp(:,2)==currnode);
    branch1=twigsourcetemp(internode1,1);

    display(internode1);
    display(branch1);
    
    if currbranch<=twigno
    twigdesttemp=twigdest(1:currbranch-1,:);
    twigdesttemp(currbranch:twigno-1,:)=twigdest(currbranch+1:end,:);
    else
        twigdesttemp=twigdest;
    end
    display(twigdesttemp);

    internode2=find(twigdesttemp(:,2)==currnode);
    branch2=twigdesttemp(internode2,1);

    display(internode2);
    display(branch2);
  
    s1=height(internode1);
    s2=height(internode2);
    display(s1);
    display(s2);
    
    if (isempty(internode1)&&s2==1)||(isempty(internode2)&&s1==1)    
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
    else
       currnodelistbefore=currnodelist;
       currbranchlistbefore=currbranchlist;
        display(currnodelist);
        for c=1:s1
            currnode=A(branch1(c,1),3);
            currbranch=branch1(c,1);
            currbranchlist(i)=currbranch(1,1);
            currnodelist(i)=currnode(1,1);
            display(currnodelist);
            display(currbranchlist);
            display(i);
            
            [res1,res2]=branchSelector(A,currbranchlist(i),lastnode,currnode);
            display(res1);
            display(res2);
            
            if(res1(end)~=0)
                flag=1;
                i=i+1;
                currnodelist = [currnodelist res1(1,2:end)];
                currbranchlist = [currbranchlist res2(1,2:end)];
                display(currnodelist);
                display(currbranchlist);
                break;
            end
           
           
            
        end
        
         if(flag==1)
            break;
         end
         currnodelist=currnodelistbefore;
         currbranchlist=currbranchlistbefore;
        for c=1:s2
            display(check);
            display(currnodelist);
            display(currbranchlist);
            currnode=A(branch2(c,1),2);
            currbranch=branch2(c,1);
            currbranchlist(i)=currbranch(1,1)*(-1);
            currnodelist(i)=currnode(1,1);
            display(currnodelist);
            display(currbranchlist);
            display(currbranch);
            display(currbranchlist(i));
            display(i);
            
            [res1,res2]=branchSelector(A,currbranch,lastnode,currnode);
            display(res1);
            display(res2);
            
            if(res1(end)~=0)
                flag=1;
                i=i+1;
                currnodelist = [currnodelist res1(1,2:end)];
                currbranchlist = [currbranchlist res2(1,2:end)];
                display(currnodelist);
                display(currbranchlist);
                break;
            end
         
           
            
        end
       
      if(flag==1)
            break;
      end
         if(check==1)
            break;
         end
    end
   
end
   y=currnodelist;
   z=currbranchlist;
   k= zeros(1,height(A));
   display(k);
   %display(z(1,2)/abs(z(1,2)));
   for c=1:length(z)
       k(1,abs(z(1,c)))=z(1,c)/abs(z(1,c));
       display(k);
   end
  h=k;
end


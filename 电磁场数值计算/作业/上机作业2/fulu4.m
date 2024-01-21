nodes=zeros(504,2);
for i=1:12
    for j=1:9
        k=(i-1)*9+j;
        nodes(k,1)=i-1;
        nodes(k,2)=65+j;
    end
end

for i=7:12
    for j=1:66
        k=108+(i-7)*66+j;
        nodes(k,1)=i-1;
        nodes(k,2)=j-1;
    end
end

trs=zeros(836,2);
for i=1:2:22
    for j=1:8
        e1=(i-1)*8+j;
        trs(e1,1)=(i-1)*9/2+9+j+1;
        trs(e1,2)=trs(e1,1)-9;
        trs(e1,3)=trs(e1,2)-1;
        e2=e1+8;
        trs(e2,1)=trs(e1,3);
        trs(e2,2)=trs(e2,1)+9;
        trs(e2,3)=trs(e1,1);
    end
end
for i=1:2:10
    for j=1:65
         e1=176+(i-1)*65+j;
        trs(e1,1)=108+(i-1)*66/2+66+j+1;
        trs(e1,2)=trs(e1,1)-66;
        trs(e1,3)=trs(e1,2)-1;
         e2=e1+65;
        trs(e2,1)=trs(e1,3);
        trs(e2,2)=trs(e2,1)+66;
        trs(e2,3)=trs(e1,1);
    end
end

for i=1:2:10
    e=826+i;
    trs(e,1)=64+(i-1)*9/2;
    trs(e,2)=trs(e,1)-9;
    trs(e,3)=174+(i-1)*66/2;
    e2=e+1;
   trs(e2,1)=trs(e,3);
   trs(e2,2)=trs(e2,1)+66;
   trs(e2,3)=trs(e,1);
end

d=zeros(25,1);
for i=1:7
    d(1+2*(i-1))=0;
    d(2+2*(i-1))=100;
end
for i=8:11
    d(15+(i-7))=100;
end
for i=1:6
    d(20+i-1)=0;
end

k=zeros(504,504);
b=zeros(504,1);
c=zeros(504,1);

    for w=1:836
        i=trs(w,1);
        j=trs(w,2);
        m =trs(w,3);
        b(i)=nodes(j,2)-nodes(m,2);
        b(j)=nodes(m,2)-nodes(i,2);
        b(m)=nodes(i,2)-nodes(j,2);
        c(i)=nodes(m,1)-nodes(j,1);
        c(j)=nodes(i,1)-nodes(m,1);
        c(m)=nodes(j,1)-nodes(i,1);
        temp=2*(b(i)*c(j)-b(j)*c(i));
        k(i,i)=k(i,i)+(b(i)*b(i)+c(i)*c(i))/temp;
        k(j,j)=k(j,j)+(b(j)*b(j)+c(j)*c(j))/temp;
        k(m,m)=k(m,m)+(b(m)*b(m)+c(m)*c(m))/temp;
        k(i,j)=k(i,j)+(b(i)*b(j)+c(i)*c(j))/temp;k(j,i)=k(i,j);
        k(i,m)=k(i,m)+(b(i)*b(m)+c(i)*c(m))/temp;k(m,i)=k(i,m);
        k(m,j)=k(m,j)+(b(m)*b(j)+c(m)*c(j))/temp;k(j,m)=k(m,j);
    end

   % k11=k([9:13,16:20,23:27,30:34,37:41,44:48,51:55,58:62,65:69],[9:13,16:20,23:27,30:34,37:41,44:48,51:55,58:62,65:69]); 
   %k12=k([9:13,16:20,23:27,30:34,37:41,44:48,51:55,58:62,65:69],[1:8,14,15,21,22,28,29,35,36,42,43,49,50,56,57,63,64,70:77]);
    k11=k([2:8,11:17,20:26,29:35,38:44,47:53,56:62,64:71,73:80,82:89,91:98,100:107,110:174,176:240,242:306,308:372,374:438,440:504], ...
        [2:8,11:17,20:26,29:35,38:44,47:53,56:62,64:71,73:80,82:89,91:98,100:107,110:174,176:240,242:306,308:372,374:438,440:504]);
    k12=k([2:8,11:17,20:26,29:35,38:44,47:53,56:62,64:71,73:80,82:89,91:98,100:107,110:174,176:240,242:306,308:372,374:438,440:504], ...
        [1,9,10,18,19,27,28,36,37,45,46,54,55,63,72,81,90,99,108,109,175,241,307,373,439]);
    you=-k12*d;
    AI=k11\you;

    
   
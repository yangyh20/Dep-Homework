nodes=zeros(77,2);
a=1;
for i=1:11
    for j=1:7
        k=(i-1)*7+j;
        nodes(k,1)=0.1*a*(i-1);
        nodes(k,2)=0.1*a*(j-1);
    end
end

trs=zeros(120,2);
for i=1:2:20
    for j=1:6
        e1=(i-1)*6+j;
        trs(e1,1)=(i-1)*7/2+7+j+1;
        trs(e1,2)=trs(e1,1)-7;
        trs(e1,3)=trs(e1,2)-1;
        e2=e1+6;
        trs(e2,1)=trs(e1,3);
        trs(e2,2)=trs(e2,1)+7;
        trs(e2,3)=trs(e1,1);
    end
end

d=zeros(32,1);
for i=1:7
    d(i)=0;
    d(25+i)=0;
end
for i=1:9
    d(8+2*(i-1))=0;
    d(9+2*(i-1))=100;
end


k=zeros(77,77);
b=zeros(77);
c=zeros(77);

    for w=1:120
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

    k11=k([9:13,16:20,23:27,30:34,37:41,44:48,51:55,58:62,65:69],[9:13,16:20,23:27,30:34,37:41,44:48,51:55,58:62,65:69]);
    k12=k([9:13,16:20,23:27,30:34,37:41,44:48,51:55,58:62,65:69],[1:8,14,15,21,22,28,29,35,36,42,43,49,50,56,57,63,64,70:77]);
    you=-k12*d;
    AI=k11\you;

    
   
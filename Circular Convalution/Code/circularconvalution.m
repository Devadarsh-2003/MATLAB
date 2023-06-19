close all
clear all

% circular convalution
h=[4,1,6,2];
x=[2,3,-1];
n=length(h);
m=length(x);
z=max(m,n);
%taking the maximum length out of h and x so that we can so that we can add
%zeros and make same length 
x=[x zeros(1,z-m)];
h=[h zeros(1,z-n)];
y=zeros(1,z);
for i=1:z;
    for k=1:z;
        p=mod(i-k,z);
        p=p+1;
        y(i)=y(i)+x(k)*h(p);
    end
end
figure;
subplot(2,1,1);
stem(y);
xlabel('n');
ylabel('y(n)');
title('output of our function')
%now we are checking our and with the cconv function
f=cconv(h,x,z);
subplot(2,1,2);
stem(f);
xlabel('n');
ylabel('y(n)');
title('using cconv function');

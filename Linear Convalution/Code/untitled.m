close all
clear all
% Linear convalution
h=[1 2 3 4 5 6 7 8 9];
x=[1 2 3];
n=length(h);
m=length(x);
p=n+m-1;
% p will be the length of the output signal 
% now our next step is to put zeros in all places of y where y is output
% so that we can later add the values we will obtain later
y=zeros(1,p);
for i=1:p
    for k=1:n
        if i-k>=0 & i-k<m
            y(i)=y(i)+h(k)*x(i-k+1);
        end
    end
end
figure;
subplot(2,1,1);
stem(y);
title('by the funcyion we made');
xlabel("n");
ylabel("y(n)");
% now we will plot the convalution with the inbuilt conv function to cross check 
c=conv(h,x);
subplot(2,1,2);
stem(c);
title('by inbult function');
xlabel("n");
ylabel("y(n)");
clear all
clc
%% 3.1 Initialization
x=1:0.5:11;
%% 3.2.1 Heating capacity
i1=1;
while i1<22
f1=-x(i1)+0.003*x(i1)^3;
if i1==1
        g1=f1;
        k1=1;
    else
        if g1>f1
            g1=f1;
            k1=i1;
        end
end
    i1=i1+1;
end
fprintf('\nNon-dominated solution for Heating capacity: x= %f\nValue of function at x*=%f\n',x(k1),g1)
%% 3.2.2 Production cost
i2=1; 
while i2<22
f2=0.5+1.2*log(x(i2))+0.125*x(i2);
if i2==1
        g2=f2;
        k2=1;
    else
        if g2>f2
            g2=f2;
            k2=i2;
        end
end
    i2=i2+1;
end
fprintf('\nNon-dominated solution for Cost of production: x= %f\nValue of function at x*=%f\n',x(k2),g2)
%% 3.2.3 Speed of production
i3=1;
while i3<22
f3=-1-5/x(i3);
if i3==1
        g3=f3;
        k3=1;
    else
        if g3>f3
            g3=f3;
            k3=i3;
        end
 end
    i3=i3+1;
end
fprintf('\nNon-dominated solution for maximum production: x= %f\nValue of function at x*=%f\n',x(k3),g3)
%% 3.3 Global criteria Optimal calculation
i=1;
while i<22
    f=((-7.027+x(i)-0.003*x(i)^3)/(-7.027))-((0.625-0.5-1.21*log(x(i))-0.125*x(i))/0.625)+((-6+1+5/x(i))/(-6));
    if i==1
        g=f;
        k=1;
    else
        if g>f
            g=f;
            k=i;
        end
    end
    i=i+1;
end
fprintf('\nCalculated Optimal Solution: x= %f\n',x(k))
%% 3.4 Graph plotting
graph1=-x+0.003.*x.^3;
graph2=0.5+1.2*log(x)+0.125.*x;
graph3=-1-5./x;
graph=((-7.027+x-0.003*x.^3)/(-7.027))-((0.625-0.5-1.21*log(x)-0.125*x)/0.625)+((-6+1+5./x)/(-6));
hold on
plot(x,graph1,'Displayname','f1');
plot(x,graph2,'Displayname','f2');
plot(x,graph3,'Displayname','f3');
legend show
xlabel 'size of element'
ylabel 'Objective functions'
legend('Heating Capacity *(-1)','Material Cost','Speed of Production *(-1)')
figure
plot (x,graph);
xlabel 'size of element'
ylabel 'Deviation from optimal'
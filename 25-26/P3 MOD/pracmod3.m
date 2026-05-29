A1=[1
0.983518751
0.975306525
0.97529045
0.955969626
0.913790745
0.913721086
0.9100156
0.875005492
0.865664796
0.848924202
0.869286334
0.85809736
0.837132591
0.834632022
0.835301817
0.81272168
0.805451097
0.806614933
0.78752702
0.788499026
0.773771033
0.762949285
0.77347025
0.780309306
0.747135688
0.742584652];

A2=[0.971782966
0.99396496
1
0.987102683
0.989139934
0.943478147
0.957703316
0.964361552
0.978336809
0.963864893
0.969975855
0.954908423
0.938499694
0.936059896
0.945528843
0.947678396
0.944080781
0.946847995
0.947478309
0.938853208
0.960578086
0.977988831
0.966988783
0.964743537
0.975530844
0.955935748
0.969101166];

A3=[1
0.98173198
0.965614778
0.957902783
0.964624474
0.950097947
0.944546054
0.94748602
0.919181885
0.924436687
0.95296983
0.945567305
0.91757264
0.874358236
0.881203715
0.86583543
0.867085689
0.864845126
0.86459755
0.85725073
0.860982939
0.881841223
0.875936534
0.872959432
0.870508428
0.838917721
0.832270304];
A4=[1
0.745020499
0.713702667
0.690519946
0.647506792
0.642492269
0.604077921
0.631310281
0.716597216
0.712012937
0.755545974
0.785084263
0.825399001
0.817479346
0.788153511
0.744456448
0.720115678
0.745679968
0.732185014
0.740443172
0.763063498
0.773689731
0.817530553
0.841533093
0.831653007
0.758482315
0.753624554
];
A5=[1
0.983939269
0.965441757
0.949288306
0.972943333
0.962499366
0.965492463
0.953892402
0.939000804
0.93592368
0.936887092
0.934408298
0.925665153
0.903725435
0.925547805
0.912241128
0.906874995
0.909714526
0.894317318
0.864584827
0.865907527
0.86929613
0.856450152
0.840677721
0.863214319
0.819973778
0.823850606
];
t=linspace(1,0,27);
%%
t=flip(t);
Y=linspace(0,1,1000);
A1=flip(A1);
A2=flip(A2);
A3=flip(A3);
A4=flip(A4);
A5=flip(A5);
%%
format longE
a0=polyfit(t,A1,0);
format longE
a1=polyfit(t,A1,1);
format longE
a2=polyfit(t,A1,2);
format longE
a3=polyfit(t,A1,3);
format longE
a4=polyfit(t,A1,4);
format longE
a5=polyfit(t,A1,5);

format longE
b0=polyfit(t,A2,0);
format longE
b1=polyfit(t,A2,1);
format longE
b2=polyfit(t,A2,2);
format longE
b3=polyfit(t,A2,3);
format longE
b4=polyfit(t,A2,4);
format longE
b5=polyfit(t,A2,5);

format longE
c0=polyfit(t,A3,0);
format longE
c1=polyfit(t,A3,1);
format longE
c2=polyfit(t,A3,2);
format longE
c3=polyfit(t,A3,3);
format longE
c4=polyfit(t,A3,4);
format longE
c5=polyfit(t,A3,5);

format longE
d0=polyfit(t,A4,0);
format longE
d1=polyfit(t,A4,1);
format longE
d2=polyfit(t,A4,2);
format longE
d3=polyfit(t,A4,3);
format longE
d4=polyfit(t,A4,4);
format longE
d5=polyfit(t,A4,5);

format longE
e0=polyfit(t,A5,0);
format longE
e1=polyfit(t,A5,1);
format longE
e2=polyfit(t,A5,2);
format longE
e3=polyfit(t,A5,3);
format longE
e4=polyfit(t,A5,4);
format longE
e5=polyfit(t,A5,5);
%%
Y0=polyval(a0,Y);
Y1=polyval(a1,Y);
Y2=polyval(a2,Y);
Y3=polyval(a3,Y);
Y4=polyval(a4,Y);
Y5=polyval(a5,Y);

plot(t,A1,'ro');
hold on
plot(Y,Y0,'b-','LineWidth',0.25);
hold on
plot(Y,Y1,'r-','LineWidth',0.25);
hold on
plot(Y,Y2,'g-','LineWidth',0.25);
hold on
plot(Y,Y3,'y-','LineWidth',0.25);
hold on
plot(Y,Y4,'b-','Color',[0.5 0 0.8],'LineWidth',0.25);
hold on
plot(Y,Y5,'b-','Color',[1 0.5 0],'LineWidth',0.25);
hold on
grid on
legend('Datos','TW0','TW1','TW2','TW3','TW4','TW5','interpreter',...
'latex','Location','northwest')
%%
Y0=polyval(b0,Y);
Y1=polyval(b1,Y);
Y2=polyval(b2,Y);
Y3=polyval(b3,Y);
Y4=polyval(b4,Y);
Y5=polyval(b5,Y);
plot(t,A2,'ro');
hold on
plot(Y,Y0,'b-','LineWidth',0.25);
hold on
plot(Y,Y1,'r-','LineWidth',0.25);
hold on
plot(Y,Y2,'g-','LineWidth',0.25);
hold on
plot(Y,Y3,'y-','LineWidth',0.25);
hold on
plot(Y,Y4,'b-','Color',[0.5 0 0.8],'LineWidth',0.25);
hold on
plot(Y,Y5,'b-','Color',[1 0.5 0],'LineWidth',0.25);
hold on
grid on
legend('Datos','SMI0','SMI1','SMI2','SMI3','SMI4','SMI5','interpreter',...
'latex','Location','north')
%%
Y0=polyval(c0,Y);
Y1=polyval(c1,Y);
Y2=polyval(c2,Y);
Y3=polyval(c3,Y);
Y4=polyval(c4,Y);
Y5=polyval(c5,Y);
plot(t,A3,'ro');
hold on
plot(Y,Y0,'b-','LineWidth',0.25);
hold on
plot(Y,Y1,'r-','LineWidth',0.25);
hold on
plot(Y,Y2,'g-','LineWidth',0.25);
hold on
plot(Y,Y3,'y-','LineWidth',0.25);
hold on
plot(Y,Y4,'b-','Color',[0.5 0 0.8],'LineWidth',0.25);
hold on
plot(Y,Y5,'b-','Color',[1 0.5 0],'LineWidth',0.25);
hold on
grid on
legend('Datos','IB0','IB1','IB2','IB3','IB4','IB5','interpreter',...
'latex','Location','northwest')
%%
Y0=polyval(d0,Y);
Y1=polyval(d1,Y);
Y2=polyval(d2,Y);
Y3=polyval(d3,Y);
Y4=polyval(d4,Y);
Y5=polyval(d5,Y);
plot(t,A4,'ro');
hold on
plot(Y,Y0,'b-','LineWidth',0.25);
hold on
plot(Y,Y1,'r-','LineWidth',0.25);
hold on
plot(Y,Y2,'g-','LineWidth',0.25);
hold on
plot(Y,Y3,'y-','LineWidth',0.25);
hold on
plot(Y,Y4,'b-','Color',[0.5 0 0.8],'LineWidth',0.25);
hold on
plot(Y,Y5,'b-','Color',[1 0.5 0],'LineWidth',0.25);
hold on
grid on
legend('Datos','SARG0','SARG1','SARG2','SARG3','SARG4','SARG5','interpreter',...
'latex','Location','northwest')
%%
Y0=polyval(e0,Y);
Y1=polyval(e1,Y);
Y2=polyval(e2,Y);
Y3=polyval(e3,Y);
Y4=polyval(e4,Y);
Y5=polyval(e5,Y);
plot(t,A5,'ro');
hold on
plot(Y,Y0,'b-','LineWidth',0.25);
hold on
plot(Y,Y1,'r-','LineWidth',0.25);
hold on
plot(Y,Y2,'g-','LineWidth',0.25);
hold on
plot(Y,Y3,'y-','LineWidth',0.25);
hold on
plot(Y,Y4,'b-','Color',[0.5 0 0.8],'LineWidth',0.25);
hold on
plot(Y,Y5,'b-','Color',[1 0.5 0],'LineWidth',0.25);
hold on
grid on
legend('Datos','Sp5-0','Sp5-1','Sp5-2','Sp5-3','Sp5-4','Sp5-5','interpreter',...
'latex','Location','southeast')
%%
sse=0;
for i=1:27
    sse=sse+(A3(i)-polyval(c5,t(i)))^2;
end
sse=sqrt(sse)/27;
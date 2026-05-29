%% Práctica 7: Sistemas sobredeterminados
%% 1-DATOS
A=hilb(25);
A=A(:,1:7);
b=A*ones(7,1);
format longE
%% 1-A
C=A'*A;
d=A'*b;
G=chol(C,"lower");
k=G\d;
x_c=G'\k;
E1=norm(A*x_c-b,2);
%% 1-B
[Q,R]=qr(A,0);
y = Q' * b;
x_qr = R \ y;
E2 = norm(A*x_qr - b, 2);
%% 2-DATOS
M1=zeros(11,3);
M2=zeros(11,3);
M3=zeros(11,3);
t=-0.5:0.2:1.5;
M1(:,1)=ones(11,1); M2(:,1)=ones(11,1); M3(:,1)=ones(11,1);
M1(:,2)=exp(t)'; M2(:,2)=(1./(1+t))'; M3(:,2)=t';
M1(:,3)=exp(2*t)'; M2(:,3)=(1./((1+t).^2))'; M3(:,3)=(t.^2)';
b=[2.4529 2.0635 2.8567 3.5162 4.4488 6.1392 8.2734 10.8788 13.6824 16.4788 20.4853]';
%% 2-A
C1=M1'*M1;
d1=M1'*b;
G1=chol(C1,"lower");
k1=G1\d1;
x_1c=G1'\k1;
E1C=norm(M1*x_1c-b,2);

C2=M2'*M2;
d2=M2'*b;
G2=chol(C2,"lower");
k2=G2\d2;
x_2c=G2'\k2;
E2C=norm(M2*x_2c-b,2);

C3=M3'*M3;
d3=M3'*b;
G3=chol(C3,"lower");
k3=G3\d3;
x_3c=G3'\k3;
E3C=norm(M3*x_3c-b,2);
%% 2-B
[Q1,R1]=qr(M1,0);
y1 = Q1' * b;
x_1qr = R1 \ y1;
E1Q = norm(M1*x_1qr - b, 2);

[Q2,R2]=qr(M2,0);
y2 = Q2' * b;
x_2qr = R2 \ y2;
E2Q = norm(M2*x_2qr - b, 2);

[Q3,R3]=qr(M3,0);
y3 = Q3' * b;
x_3qr = R3 \ y3;
E3Q = norm(M3*x_3qr - b, 2);
%% 2-GRÁFICAV
plot(t,b,'ro',DisplayName='Datos');
hold on
plot(t,M1*x_1c,'go',DisplayName='Aprox 1-Ch');
hold on
plot(t,M2*x_2c,'bo',DisplayName='Aprox 2-Ch');
hold on
plot(t,M3*x_3c,'yo',DisplayName='Aprox 3-Ch');
hold on
plot(t,M1*x_1qr,'gsquare',DisplayName='Aprox 1-QR');
hold on
plot(t,M2*x_2qr,'bsquare',DisplayName='Aprox 2-QR');
hold on
plot(t,M3*x_3qr,'ysquare',DisplayName='Aprox 3-QR');
grid on
legend
%% 2-GRÁFICAE
plot(t,abs(M1*x_1c-b),'go',DisplayName='EAbs 1-Ch');
hold on
plot(t,abs(M2*x_2c-b),'bo',DisplayName='EAbs 2-Ch');
hold on
plot(t,abs(M3*x_3c-b),'ro',DisplayName='EAbs 3-Ch');
hold on
plot(t,abs(M1*x_1qr-b),'gsquare',DisplayName='EAbs 1-QR');
hold on
plot(t,abs(M2*x_2qr-b),'bsquare',DisplayName='EAbs 2-QR');
hold on
plot(t,abs(M3*x_3qr-b),'rsquare',DisplayName='EAbs 3-QR');
grid on
legend
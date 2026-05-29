function R=ejtre
v=zeros(7,10);
w=zeros(10,9);
for i=1:10
    v(:,i) = 10-20*rand(7,1);
    w(i,:) = 10-20*rand(1,9);
    R(i) = rank(v(:,i)*w(i,:));
end
clear variables; close all; clc;
dims = 4;
n = 10000;
sigmas = 10+randn(dims,n);
Wm = rand(1,n);
Wm = Wm/sum(Wm);
Wc = rand(1,n);
Wc = Wc/sum(Wc);

m1 = sigmas*Wm';
m2 = sum(sigmas.*Wm,2);

c2 = zeros(dims, dims);
for k=1:n
    y = sigmas(:,k) - m1;
    c2 = c2 + Wc(k) * (y * y');
end
y = sigmas-repmat(m1,1,n);
y2 = sigmas-m1;
y == y2
c1 = y*diag(Wc)*y';
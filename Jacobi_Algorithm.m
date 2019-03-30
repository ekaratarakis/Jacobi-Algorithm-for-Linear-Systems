clear all 
close all
clc

N = 4;
b = ones(N,1);

A = []; % Specify the matrix P you want before you go
tol = 1e-6;
N = length(A);

x = ones(N,1);
D = diag(diag(A));
R = A - D;

x_mi = inv(A)*b;
x_matrix_inversion = x_mi'
x_new = A*b;
err = Inf;
iter = 0;
while err > tol
    x_old = x;
    x = inv(D)*(b - R*x_old);
    err = sum(sum((x - x_old).^2)); % or abs(x_old - x)
    iter = iter + 1; % Counting the number of iterations upon convergence.
end
x'
iter
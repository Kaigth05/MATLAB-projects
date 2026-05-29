function [lambda, y] = get_min_eig(A)
[V,D]=eig(A);
[~, i_min] = min(abs(diag(D)));
lambda = D(i_min,i_min);
y = V(:,i_min);
end
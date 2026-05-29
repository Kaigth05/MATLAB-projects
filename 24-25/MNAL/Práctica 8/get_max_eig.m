function [lambda, y] = get_max_eig(A)
[V,D]=eig(A);
[~, i_max] = max(abs(diag(D)));
lambda = D(i_max,i_max);
y = V(:,i_max);
end
function dd = ndifdivgen(data, points, derivatives)
% HERMITE_DIVIDED_DIFFERENCES Computes generalized divided differences for Hermite interpolation
%
% Inputs:
%   data        - Array of function and derivative values [f(x0), f'(x0), f(x1), f'(x1), ...]
%   points      - Array of distinct x-values [x0, x1, x2, ...]
%   derivatives - Array indicating how many derivatives at each point [1, 0, 2, ...]
%                 (0 = only function value, 1 = function + 1st derivative, etc.)
%
% Output:
%   dd          - Array of generalized divided differences
%

% Expand points array according to multiplicities
expanded_points = [];
data_idx = 1;
func_values = [];
deriv_values = {};

for i = 1:length(points)
    % Store function value
    func_values = [func_values, data(data_idx)];
    expanded_points = [expanded_points, repmat(points(i), 1, derivatives(i) + 1)];
    data_idx = data_idx + 1;
    
    % Store derivative values for this point
    derivs_at_point = [];
    for k = 1:derivatives(i)
        derivs_at_point = [derivs_at_point, data(data_idx)];
        data_idx = data_idx + 1;
    end
    deriv_values{i} = derivs_at_point;
end

n = length(expanded_points);
dd = zeros(n, n);

% Initialize first column with function values only (repeated for multiplicity)
idx = 1;
for i = 1:length(points)
    for j = 1:(derivatives(i) + 1)
        dd(idx, 1) = func_values(i);
        idx = idx + 1;
    end
end

% Compute divided differences
for j = 2:n
    for i = j:n
        x_i = expanded_points(i);
        x_prev = expanded_points(i-j+1);
        
        if x_i == x_prev
            % Same point: use derivative information
            % f[xi, xi, ..., xi] (j times) = f^(j-1)(xi) / (j-1)!
            % Find which point and which derivative
            point_idx = find(points == x_i, 1);
            deriv_order = j - 1;
            
            if deriv_order <= derivatives(point_idx)
                % We have this derivative value
                dd(i, j) = deriv_values{point_idx}(deriv_order) / factorial(deriv_order);
            else
                % Should not happen if data is provided correctly
                error('Insufficient derivative information');
            end
        else
            % Different points: standard divided difference formula
            dd(i, j) = (dd(i, j-1) - dd(i-1, j-1)) / (x_i - x_prev);
        end
    end
end

% Extract the diagonal (coefficients for Newton form)
dd = diag(dd)';
end
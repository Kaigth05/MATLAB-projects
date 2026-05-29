f = @(t, r1, r2, v1, v2, ~, ~) [v1; v2; -r1; -r2];
[t, r1, ~, ~, ~] = eulerGravitacional(f, 0, 2*pi, [1, 0], [0, 0], 0.01, [0,0], 1);
error = max(abs(r1 - cos(t)));
disp(['Error máximo: ', num2str(error)]);
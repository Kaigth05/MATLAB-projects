function B=permutar_o_eliminar(A,i,j)

prompt = "Menú:\n" + ...
    "1-permutar filas i,j\n" + ...
    "2-permutar columnas i,j\n" + ...
    "OTROS-borrar fila i, columna j\n";
o = input(prompt);
B = A;
[R,C] = size(A);

if i <= R && i <= C
    switch o
        case 1
        B(i, :) = A(j, :);
        B(j, :) = A(i, :);
        case 2
        B(:, i) = A(:, j);
        B(:, j) = A(:, i);
        otherwise
        B(i,:) = [];
        B(:,j) = [];
    end
end

end

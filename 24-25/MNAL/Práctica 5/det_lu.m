function d = det_lu(A)
B = desc_lu_compacta(A);
d = prod(diag(B));
end
function print_matrix_in_file(f, Matrix)
  Size = size(Matrix);
  m = Size(1);
  n = Size(2);
  for i = 1:m 
    for j = 1:n
      fprintf(f, "%d " , Matrix(i, j));
    endfor
    fprintf(f, '\n'); 
  endfor
endfunction

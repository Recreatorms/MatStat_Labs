function print_matrix_in_file(f, Matrix)
Size = size(Matrix);
for i = 1:Size(1)
  for j = 1:Size(2)
    fprintf(f, '%8.5f\t', Matrix(i, j));
  endfor
  fprintf(f, '\n');
endfor
endfunction
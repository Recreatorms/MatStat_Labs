function mas = read_matrix_from_file (f, m, n)
  
  fseek (f, 0, SEEK_SET);
  temp = textscan(f, "%10.7f");
  mas = zeros(m,n);
  
  for i = 1:m
    for j = 1:n
      output_precision(7);
      mas(i, j) = temp{1,1}((i-1)*n + j);
    endfor
   endfor
  
endfunction

function mas = read_matrix_from_file (f) 
  fseek (f, 0, SEEK_SET);
  temp = textscan(f, "%10.5f");
  mas = zeros(20,10);
  for i = 1:20
    for j = 1:10
      mas(i, j) = temp{1,1}((i-1)*10 + j);
     endfor
  endfor
endfunction

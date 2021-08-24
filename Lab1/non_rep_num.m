function res = non_rep_num(Matrix)
  res = [];
  counts = size(Matrix);
  for i = 1:counts(1) %N
    for j = 1:counts(2) %M
      if is_in(Matrix(i,j), res) == 0
        res(length(res)+1) = Matrix(i,j);
      endif
    endfor
  endfor
  
  for i = 0:max(res)
    if is_in(i, res) == 0
        res(length(res)+1) = i;
    endif
  endfor
endfunction
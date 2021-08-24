function res = stat_ser(Matrix)
  Size = size(Matrix);
  x = sort(non_rep_num(Matrix));
  n = periodicity(x, Matrix);
  w = n./(Size(1)*Size(2));
  s = stat_sum(w);
  res = [x; n; w; s];
endfunction
function res = u1(array)
  res = 0;
  for i = 1:20
    for j = 1:10
      res += array(i,j);
    endfor
  endfor
  res *= 1/200;
endfunction

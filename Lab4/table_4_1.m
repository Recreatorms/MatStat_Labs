function res = table_4_1 (u, c)
  res = zeros(1,4);
  res(1) = u; res(2) = 0.05; res(3) = c; 
  if(u <= c) 
    res(4) = 0;
  else 
    res(4) = 1;
  endif
endfunction

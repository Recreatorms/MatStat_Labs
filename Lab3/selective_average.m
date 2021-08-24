function res = selective_average (array)

  x = zeros(1, 8);
  w = zeros(1, 8);
  
  for i = 1:8
    x(i) = array(i,2);
    w(i) = array(i,4);
  endfor
  
  res = 0;
  for i = 1:8
    res += x(i)*w(i);
  endfor
  
endfunction

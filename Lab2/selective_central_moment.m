function res = selective_central_moment(array, k) 
  x = zeros(1, 8);
  w = zeros(1, 8); 
  for i = 1:8
    x(i) = array(i,1);
    w(i) = array(i,3); 
  endfor
  res = 0;
  val = selective_moment(array, 1); 
  for i = 1:8
    res += ((x(i) - val)**k) * w(i); 
  endfor
endfunction

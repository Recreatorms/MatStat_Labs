function res = selective_dispersion (array)
  
  h = array(2,1)-array(1,1);
  x = zeros(1,8);
  w = zeros(1,8);
  
  for i = 1:8
    x(i) = array(i,2);
    w(i) = array(i,4);
  endfor
  
  val = selective_moment(array,1);

  sum = 0;
  for i = 1:8
    sum += (x(i) - val)**2 * w(i);
  endfor
  
  sum = sum - (h**2)/12;
  res = sum;
  
endfunction

function res = selective_mode (array, k, h)
  a = zeros(1, 8);
  w = zeros(1, 8);
  for i = 1:8
    a(i) = array(i,1);
    w(i) = array(i,3);
  endfor
  res = a(k) + h*( (w(k+1)-w(k)) / (2*w(k+1)-w(k)-w(k+2)) );
endfunction
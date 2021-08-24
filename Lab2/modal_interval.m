function k = modal_interval (array)
  k = 0;
  max = 0;
  w = zeros(1, 8);
  for i = 1:8
   w(i) = array(i,3);
  endfor

  for i = 1:8
    if(w(i) > max)
      max = w(i);
      k = i;
    endif 
  endfor
endfunction

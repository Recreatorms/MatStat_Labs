function res = selective_moment(array, k)
   x = zeros(1, 8);
   w = zeros(1, 8); 
   for i = 1:8
     x(i) = array(i,1);
     w(i) = array(i,3); 
   endfor
   res = 0; 
   for i = 1:8
    res += (x(i)**k) * w(i); 
   endfor
endfunction


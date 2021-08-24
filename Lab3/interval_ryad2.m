function res = interval_ryad2 (array)
  res = zeros(8, 4);
  h = (7.16-1.76) / 8;
  
  for i = 1:8
    res(i,1) = 1.76 + (i-1)*h;
    res(i,2) = res(i,1)+ h/2;
  endfor
  
  count = 0;
  n = 1;
  for i = 1:20
    for j = 1:10
      if(array(i,j) <= (res(n,1) + h)) 
        ++count;
        res(n,3) = count;
      else
        count = 1;
        ++n;
        res(n,3) = count;
      endif
    endfor
  endfor
  
  for i = 1:8
    res(i,4) = res(i,3)/200;
  endfor
 
endfunction

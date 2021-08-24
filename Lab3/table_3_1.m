function res = table_3_1 (sorted, a, b)
  res = zeros(1,9);
  N = 200;
  res(1) = a; res(2) = b; res(3) = N;
  #Fn = 0; F = 0; Fn0;
  x = zeros(1,200);
  counter = 1;
  for i = 1:20
    for j = 1:10
      x(counter) = sorted(i,j);
      ++counter;
    endfor
  endfor
  maxval = 0; id = 0;
  for i = 1:200
    Fn = i/N;
    Fn0 = (i-1)/N;
    F = (x(i)-a)/(b-a);
    if(max(abs(Fn-F), abs(Fn0-F)))> maxval
      maxval = max(abs(Fn-F), abs(Fn0-F));
      id = i;
    endif
  endfor
  res(6) = x(id);
  res(4) = maxval; res(5) = maxval * (N)**(0.5);
  Fn = id/N;
  Fn0 = (id-1)/N;
  F = (res(6)-a)/(b-a);
  res(7) = F;
  res(8) = Fn;
  res(9) = Fn0;
  
endfunction

function res = prob_table (raspr, array, intr, m, a1, sigma, lambda, a2, b) 
  res = zeros(8, 3);
  dm = (array(20, 10) - array(1,1)) / m;

  for i = 1:8
    res(i,1) = intr(i,1);
    res(i,2) = intr(i,3); 
  endfor

  if(raspr==1)
    for i = 1:8
      res(i,3) = norm_raspr(a1, sigma, res(i,1), dm);
    endfor
  elseif(raspr==2)
    for i = 1:8
      res(i,3) = exp_raspr(lambda, res(i,1), dm);
    endfor
  elseif(raspr==3)
    for i = 1:8
      res(i,3) = 1/8;
    endfor
  endif
endfunction

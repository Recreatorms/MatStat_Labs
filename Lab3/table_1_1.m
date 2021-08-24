function res = table_1_1 (array, a, sigma)

h = array(2,1)-array(1,1);
res = zeros(9,6);
for i = 1:9
  res(i,1) = i-1;
  if(i<9)
    res(i,2) = array(i,1);
  else
    res(i,2) = array(i-1,1)+h;
  endif
  res(i,3) = (res(i,2)-a)/sigma;
  res(i,4) = 1/sigma * (2*3.14)**(-0.5) * exp((-(res(i,3)^2)/2));
  #res(i,5) = normcdf(res(i,3), a, sigma);
  f = inline("exp((-t**2)/2)");
  intgrl = quad(f, -inf, res(i,3));
  res(i,5) = (1/sqrt(2*pi))*intgrl;
  if(i>1)
    if(i==2) res(i,6) = res(i,5);
    endif
    if(i==9) res(i,6) = 1 - res(i-1,5);
    endif
    if(i!=2 && i!=9)
    res(i,6) = res(i,5) - res(i-1,5);
    endif
  endif
endfor

endfunction

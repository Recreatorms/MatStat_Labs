function mas = generate (raspr, a1, sigma, lambda, a2, b, N) 
  mas = zeros(20,10);
  temp = zeros(200,1);

  if(raspr == 1)
    temp = normrnd(a1, sigma, 1, N);

  elseif(raspr == 2)
    temp = exprnd(1/lambda, 1, N);

  elseif(raspr == 3)
    temp = unifrnd(a2, b, 1, N); 
  endif
  counter = 1;

  for i = 1:20 
    for j = 1:10
      mas(i,j) = temp(counter);
      ++counter;
    endfor 
  endfor
endfunction

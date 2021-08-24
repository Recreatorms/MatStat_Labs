function res = sort_matrice (matrice)
  
  temp = zeros(200, 1);
  counter = 1;
  for i = 1:20
    for j = 1:10
      temp(counter) = matrice(i,j);
      ++counter;
    endfor
  endfor
  
  temp = sort(temp);
  counter = 1;
  
  for i= 1:20
    for j = 1:10
      matrice(i,j) = temp(counter);
      ++counter;
    endfor
  endfor
  
  res = matrice;
  
endfunction

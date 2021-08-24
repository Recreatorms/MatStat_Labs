function graph_empiric_func (array)
  x = zeros(1, 200);
  counter = 1; 
  for i = 1:20
   for j = 1:10
    x(counter) = array(i,j);
    ++counter; 
   endfor
  endfor
  y = zeros(1, 200); 
  for i = 1:200
    y(i) = i/200; 
  endfor
  temp1 = zeros(1, 2); 
  temp2 = zeros(1, 2);

  for i = 1:199 
    temp1(1) = x(i);
    temp1(2) = x(i+1);
    temp2(1) = y(i);
    temp2(2) = y(i);
    plot(temp1, temp2, "k", "linewidth", 1); 
    hold on;
  endfor
endfunction

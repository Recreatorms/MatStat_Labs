function graph_histogram (array)
  
  dm = array(2,1)-array(1,1);
  a = zeros(1,9);
  h = zeros(1,8)
  for i = 1:8
    a(i) = array(i,1);
    h(i) = (array(i,4))/dm;
  endfor
  a(9) = a(8) + dm;
  
  temp1 = zeros(1, 2);
  temp2 = zeros(1, 2);
  
  for i = 1:8
    temp1(1) = temp1(2) = a(i);
    temp2(1) = 0; temp2(2) = h(i);
    plot(temp1, temp2, "k", "linewidth", 1);
    hold on;
    
    temp1(1) = a(i); temp1(2) = a(i+1);
    temp2(1) = temp2(2) = h(i);
    plot(temp1, temp2, "k", "linewidth", 1);
    hold on;
    
    temp1(1) = temp1(2) = a(i+1);
    temp2(1) = 0; temp2(2) = h(i);
    plot(temp1, temp2, "k", "linewidth", 1);
    hold on;
    
  endfor

endfunction

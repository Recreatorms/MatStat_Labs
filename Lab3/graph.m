function graph (array, a, b)
  graph_histogram(array);
  temp1 = zeros(1,2);
  temp2 = zeros(1,2);
  temp1(1) = a; temp1(2) = b;
  temp2(1) = temp2(2) = 1/(b-a);
  plot(temp1, temp2, "b", "linewidth", 1);
  hold on;
endfunction

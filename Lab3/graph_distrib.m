function graph_distrib (a,b)
  temp1 = zeros(1, 2);
  temp2 = zeros(1, 2);
  step = 0.1;
  N = fix((b-a)/step)+1;
  x = zeros(1,N);
  y = zeros(1,N);
  for i = 1:(N-1)
    x(i) = a+(i-1)*step;
    y(i) = (x(i)-a)/(b-a);
  endfor
  x(N) = b; y(N) = 1;
  for i = 1:(N-1)
    temp1(1) = x(i); temp1(2) = x(i+1);
    temp2(1) = y(i); temp2(2) = y(i+1);
    plot(temp1, temp2, "b", "linewidth", 1);
    hold on;
  endfor
  
  temp1(1) = a-0.5; temp1(2) = a;
  temp2(1) = temp2(2) = 0;
  plot(temp1, temp2, "b", "linewidth", 1);
  hold on;
  
  temp1(1) = b; temp1(2) = b+0.5;
  temp2(1) = temp2(2) = 1;
  plot(temp1, temp2, "b", "linewidth", 1);
  hold on;
  
endfunction

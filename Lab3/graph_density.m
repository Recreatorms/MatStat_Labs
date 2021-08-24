function graph_density (array, a, sigma)
  
  h = array(2,1)-array(1,1);
  b0 = array(1,1); b = array(8,1)+h;
  step = 0.1;
  N = fix((b-b0)/step)+1;
  x = zeros(1,N);
  y = zeros(1,N);
  for i = 1:(N-1)
    x(i) = b0+(i-1)*step;
    y(i) = 1/sigma * (2*3.14)**(-0.5) * exp(-((x(i)-a)/sigma)^2/2);
  endfor
  x(N) = b;
  y(N) = 1/sigma * (2*3.14)**(-0.5) * exp(-((x(N)-a)/sigma)^2/2);
  temp1 = zeros(1,2);
  temp2 = zeros(1,2);
  
  for i = 1:(N-1)
    temp1(1) = x(i); temp1(2) = x(i+1);
    temp2(1) = y(i); temp2(2) = y(i+1);
    plot(temp1, temp2, "b", "linewidth", 1);
    hold on;
  endfor
  
endfunction

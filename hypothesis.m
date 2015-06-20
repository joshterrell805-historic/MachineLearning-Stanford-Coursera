% calculate h(x) = theta1 * theta2*x
function ret = hypothesis (x, theta1, theta2)
  ret = theta1 + theta2 * x;
endfunction

%!assert(hypothesis (0, 1, -4), 1)
%!assert(hypothesis(1, 1, -4), -3)
%!assert(hypothesis(2, 1, -4), -7)

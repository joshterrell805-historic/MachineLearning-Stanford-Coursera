% compute the cost of using the hypothesis h(x) = theta1 + theata2*x
% to approximate input.
% theta1: scalar
% theta2: scalr
% input: m x 2 matrix with m 2D data points.
function ret = cost (theta1, theta2, input)
  predicted_y = arrayfun(@hypothesis, input(:, 1), theta1, theta2);
  squared_differences = (input(:, 2) - predicted_y).^2;
  ret = sum(squared_differences) / (2 * rows(input));
endfunction

%!assert(cost(0, 1, [1,1;2,2;3,3]), 0)
%!assert(cost(0, 0, [1,1;2,2;3,3]), 14/6)

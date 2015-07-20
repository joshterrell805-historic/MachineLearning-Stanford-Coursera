function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%


% if gethostname() == 'joshLT'
%   disp('setting font');
%   h = figure(1);
%   FN = findall(h,'-property','FontName');
%   set(FN,'FontName','/usr/share/fonts/TTF/LiberationMono-Regular.ttf');
%   FS = findall(h,'-property','FontSize');
%   set(FS,'FontSize', 12);
% end

accepted = find(y == 1);
plot(X(accepted, 1), X(accepted, 2), 'dg');

rejected = setdiff(1:length(y), accepted);
plot(X(rejected, 1), X(rejected, 2), 'xr');

% xlabel('First Score');
% ylabel('Second score');








% =========================================================================



hold off;

end

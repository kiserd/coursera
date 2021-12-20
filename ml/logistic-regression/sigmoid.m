function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
% handle case where scalar argument is passed
if (isscalar(z))
    g = 1 / (1 + (e ^ (-z)));
endif
% handle case where vector or matrix argument passed
rowCount = size(z, 1);
colCount = size(z, 2);
for i = 1:rowCount
    for j = 1:colCount
        g(i, j) = 1 / (1 + (e ^ (-z(i, j))));
    endfor
endfor
% =============================================================

end

function S = simple_stats(N)
[a,b] = size(N);
S = zeros(a,4);
S(:,2) = median(N,2);
S(:,1) = mean(N,2);
S(:,3) = min(N,[],2);
S(:,4) = max(N,[],2);
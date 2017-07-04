function [numseg,numpol] = fence(lng,seg)
numseg = ceil(lng/seg);
numpol = numseg+1;
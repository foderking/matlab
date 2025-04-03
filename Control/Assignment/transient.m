function [wn, z] = transient(charc)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
wn = sqrt(charc(3));
z = charc(2)/2/wn;
end
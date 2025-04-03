function [z] = os2z(OS)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
z = sqrt(log(OS/100)^2/(log(OS/100)^2+pi^2));
end
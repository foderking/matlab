function saveVideo(mov, fps, name)
%SAVEVIDEO Summary of this function goes here
%   Detailed explanation goes here
write = VideoWriter(name);
write.FrameRate = fps;
open(write)
writeVideo(write,mov)
close(write)
end
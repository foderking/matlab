nx = 8*5; ny = 4*10;
zx = nx/4; zy = ny/4;
s = 1/39;
vis = zeros(nx,ny);

for i=0:nx-1
    for j = 0:ny-1
        x = i*s*5; y = j*s*10;

        if mod(i,zx) >= mod(j,zy)
            e = floor(i/zx)+8*floor(j/zy)+1;
        else
            e = floor(i/zx)+8*floor(j/zy)+1+4;  
        end
        i1 = nodes(e,1); i2 = nodes(e,2); i3 = nodes(e,3);
        x1 = coord(i1,1); x2 = coord(i2,1); x3 = coord(i3,1);
        y1 = coord(i1,2); y2 = coord(i2,2); y3 = coord(i3,2);

        T = [X(i1);X(i2);X(i3)];
        vis(i+1,j+1) = val(x,y,x1,x2,x3,y1,y2,y3,T);
    end
end


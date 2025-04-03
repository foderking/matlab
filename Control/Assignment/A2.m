
G = tf(60, [1 152.52 378])
[y, t] =step(G)

plot(t,y)

xlabel("Time (seconds)")
ylabel("w_o (rad/s)")


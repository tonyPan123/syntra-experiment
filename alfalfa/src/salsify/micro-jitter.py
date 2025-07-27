import matplotlib.pyplot as plt
import numpy as np


# Sample data
time = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34]
minc = [1, 1, 1, 1.5, 1.5, 2, 2.5, 2.5, 2.5, 2.5, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 8, 8, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14]
no_loss_rate = [2, 2, 1, 2.5, 1.5, 3, 4, 2.5, 4, 2.5, 5, 4, 6, 5, 6, 5, 7, 5, 6, 7, 9, 5, 9, 15, 8, 15, 15, 18, 14, 18, 14, 14, 15, 15, 15]
maxc = np.array([50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 19, 19, 19, 19, 19])


frame0 = np.array([0, 0, 0, 0, 0, 0, 2, 0, 2, 1, 2, 0, 3, 4, 4, 3, 4, 1, 5, 4, 0, 0, 0, 5, 0, 5, 0, 8, 6, 14, 9, 13, 10, 0, 0])
fec0 = np.array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 3, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 4, 0, 2, 0, 2, 2, 1, 1, 1, 4, 0, 0])
frame1 = np.array([0, 0, 1, 1, 0, 0, 2, 0, 2, 0, 2, 0, 0, 0, 2, 0, 3, 0, 1, 0, 4, 0, 0, 5, 0, 8, 0, 10, 0, 4, 0, 0, 0, 0, 0])
fec1 = np.array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0])
frame2 = np.array([0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 14])
fec2 = np.array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0])
fec12 = np.array([0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])

# X positions and bar width
x = np.arange(len(time))
width = 0.6

# Draw stacked bars
#plt = brokenaxes(ylims=(( -15, 15), (45, 65)), hspace=.1)
plt.figure(figsize=(10, 8))
plt.bar(x,               frame0, width, label='Frame Batch 2', color = 'gold', hatch = '/')
plt.bar(x, fec0,     width, bottom=frame0,     label='FEC Batch 2', color = 'wheat', hatch = '\\')
plt.bar(x, frame1,     width, bottom=frame0+fec0, label='Frame Batch 3', color = 'mediumblue', hatch = 'O')
plt.bar(x, fec1,     width, bottom=frame0+fec0+frame1, label='FEC Batch 3', color = 'lightblue', hatch = 'o')
plt.bar(x, frame2,     width, bottom=frame0+fec0+frame1+fec1, label='Frame Batch 4', color = 'red', hatch = '*')
plt.bar(x, fec2,     width, bottom=frame0+fec0+frame1+fec1+frame2, label='FEC Batch 4', color = 'pink', hatch = '.')
plt.bar(x, fec12,     width, bottom=frame0+fec0+frame1+fec1+frame2+fec2, label='FEC Batch 3&4', color = 'mediumpurple', hatch = 'x')

plt.plot(x, no_loss_rate, color="limegreen", label='no_loss_rate', linewidth=3, linestyle='--')
plt.plot(x, minc, color="orange", label='minc', linewidth=3, linestyle='--')
plt.plot(x, maxc, color="black", label='maxc', linewidth=3, linestyle='--')

#plt.title('Converging_action_plot')
ax = plt.gca()  # get current axes
ax.spines['bottom'].set_position(('data', 0)) 
ax.spines['top'].set_color('none')         
ax.spines['right'].set_color('none')     
ax.xaxis.set_ticks_position('bottom')         
ax.yaxis.set_ticks_position('left')     
yticks = ax.get_yticks()
yticks = yticks[yticks >= 0]
ax.set_yticks(yticks)

ends = [[0,2], [1,3], [2, 3], [2, 3], [3, 6], [3, 6], [4, 6], [4, 6], [5, 8], [5, 8], [6, 9], [7, 10], [7, 10], [8, 10], [8, 10], [9, 12], [10, 13], [10, 13], 
        [11, 14], [11, 14], [12, 15], [13, 16], [14, 17], [14, 17], [15, 18], [15, 18], [16, 19], [18, 20], [18, 20], [19, 20], 
        [20, 23], [20, 23], [21, 23], [22, 25], [22, 25], [23, 25], [24, 27], [25, 28], [25, 28], [26, 29], [26, 29], [27, 30], [28, 31], [29, 32], 
        [32, 33], [32, 33], [33, 34]]

positions = [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

map = {}
for i in positions:
    map[i] = -1

for index, line in enumerate(ends): 
    for i in positions:
        if map[i] < line[0]:
            map[i] = -1

    position = positions[len(positions) - 1]
    for i in positions:
        if map[i] == -1:
            position = i
            map[i] = line[1]
            break

    plt.plot(line, [-position,-position], marker='|', color = 'brown')

# Labels and formatting
plt.xlabel('Timestamp', fontsize=16)
plt.ylabel('# MTU-sized pkts', fontsize=16)
plt.xticks(x, time, fontsize=16)
xticks = ax.get_xticks()
xticks = xticks[xticks % 2 == 1]
ax.set_xticks(xticks)
plt.axis([-1,35, -10,22])
plt.yticks(fontsize=16)
plt.legend(fontsize=14)
plt.tight_layout()
#plt.show()
plt.savefig('micro-jitter.pdf', format='pdf')
plt.savefig('micro-jitter.png')

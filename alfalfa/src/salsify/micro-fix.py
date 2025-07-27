import matplotlib.pyplot as plt
import numpy as np

# Sample data
time = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
minc = [1, 1, 1, 1.5, 1.5, 3, 3, 9, 9, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15]
maxc = [50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 29, 29, 29, 29, 29, 29, 29, 29, 29]
no_loss_rate = [2, 2, 1, 2.5, 1.5, 4, 3, 10, 9, 16, 15, 27, 41, 17, 15, 17, 16, 16, 16, 16, 16]

frame0 = np.array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 15, 14, 0, 0, 0, 0, 0, 0])
fec0 = np.array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 1, 0, 0, 0, 0, 0, 0])
frame1 = np.array([0, 2, 0, 1, 0, 2, 0, 4, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
fec1 = np.array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
frame2 = np.array([0, 0, 1, 1, 0, 2, 0, 3, 0, 8, 0, 0, 0, 0, 0, 13, 12, 12, 12, 12, 12])
fec2 = np.array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 3, 3, 3, 3])
fec12 = np.array([0, 0, 0, 2, 0, 5, 0, 20, 0, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])

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
plt.axis([-1,21, -10,47])

ends = [[0,2], [1,3], [1,3], [2, 3], [3, 5], [3, 5], [4, 5], [5, 7], [5, 7], [6, 7], [7, 9], [8, 9], [8, 9], [9, 12], [9, 12], [10, 13],
        [11, 14], [14, 15], [14, 15], [15, 16], [16, 17], [16, 17], [17, 18], [18, 19], [19, 20], [19, 20]]

positions = [5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

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
plt.yticks(fontsize=16)
plt.legend(fontsize=14)
plt.tight_layout()
#plt.show()
plt.savefig('micro-fix.pdf', format='pdf')
plt.savefig('micro-fix.png')
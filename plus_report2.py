 #!/usr/bin/python3
import sys

minus = 0
nonminus = 0
for n in sys.argv[1:]:
    x = float(n)
    if x < 0.0:
          minus += 1
    elif x >= 0.0:
          nonminus += 1
print("minus :", minus)
print("nonminus :", nonminus)

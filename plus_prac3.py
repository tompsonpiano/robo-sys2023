 #!/usr/bin/python3
import sys

minus = 0
zero = 0
plus = 0
for n in sys.argv[1:]:
    x = float(n)
    if x < 0.0:
          minus += 1
    elif x > 0.0:
          plus += 1
    else:
          zero += 1
print("minus :", minus)
print("zero :", zero)
print("plus :", plus)
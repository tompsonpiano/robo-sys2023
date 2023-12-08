#!/usr/bin/python3
# SPDX-FileCopyrightText: 2023 Tomohiro Hayashi  s19c1094hn@s.chibakoudai.jp
import sys

ans = 0
for line in sys.stdin:
    try:
        ans += int(line)
    except:
        ans += float(line)
    
print(ans)
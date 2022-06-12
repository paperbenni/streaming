#!/usr/bin/env python3

import datetime
import time
import os
import sys


if len(sys.argv) < 3:
    print('nope')
    exit(1)

future = datetime.datetime.now().replace(hour=int(sys.argv[1]), minute=int(sys.argv[2]))

while True:
    present = datetime.datetime.now()
    difference = future - present
    if difference.seconds > 0 and difference.seconds < 43200:
        countdown = time.strftime('%H:%M:%S', time.gmtime(difference.seconds))
    else:
        countdown = "loading..."
    print(countdown)
    os.system("echo '" + countdown + "' > ~/stream.txt")
    time.sleep(1)


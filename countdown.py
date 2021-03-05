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
    countdown = time.strftime('%H:%M:%S', time.gmtime(difference.seconds))
    print(countdown)
    os.system("echo 'stream starting in " + countdown + "' > ~/stream.txt")
    time.sleep(1)


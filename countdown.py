#!/usr/bin/env python3

import datetime
import time
import os

future = datetime.datetime(2020, 8, 18, 18, 0, 0)

while True:
    present = datetime.datetime.now()
    difference = future - present
    countdown = time.strftime('%H:%M', time.gmtime(difference.seconds))
    print(countdown)
    os.system("echo 'stream starting in " + countdown + "' > ~/stream.txt")
    time.sleep(5)


#!/usr/bin/env python3
#
# logMaintenance.py

"""
Documentation:
  logMaintenance.py enters the arguments into the life.log with format:
  YYYY-MM-DD HH:MM:SS|[logMaintenance.main]|<string>
"""

# from __future__ import print_function # use python 3 syntax but make it compatible with python 2
# from __future__ import division       #                           ''

import sys
import logging
from pytz import timezone, utc
from datetime import datetime
from time import sleep


# create logmaintenance logger
def customTime(*args):
    utc_dt = utc.localize(datetime.utcnow())
    my_tz = timezone("US/Eastern")
    converted = utc_dt.astimezone(my_tz)
    return converted.timetuple()

logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)

loghandler = logging.FileHandler('/home/ubuntu/tb4rpi/life.log')

logformatter = logging.Formatter('%(asctime)s|%(filename)s| %(message)s',"%Y-%m-%d %H:%M")

logging.Formatter.converter = customTime

loghandler.setFormatter(logformatter)
logger.addHandler(loghandler)



def main():
    args = sys.argv
    if (len(args) == 1):
          print('USAGE: ./logMaintenance.py "log this message to life.log"')
    else:
          strToLog = "** " + args[1] + " **"
          logger.info(strToLog)
          print("'{}' added to life.log".format(strToLog))
    sleep(1)


if (__name__ == '__main__'):  main()

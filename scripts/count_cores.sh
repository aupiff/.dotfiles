#!/bin/sh
cat /proc/cpuinfo  | grep -P 'processor\t:'  | wc -l

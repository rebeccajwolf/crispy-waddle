#!/bin/bash
sh ./clean_mem.sh ;
nohup gunicorn keep_alive:app --bind 0.0.0.0:7860 &
python3 main.py --privacy --error --dont-check-for-updates --currency INR --dont-check-internet --virtual-display --discord --everyday;

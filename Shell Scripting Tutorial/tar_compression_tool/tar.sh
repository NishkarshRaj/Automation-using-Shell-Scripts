#!/bin/bash

# Simple compression
tar cvf file1.tar /home/nishkarshraj/Desktop/HelloWorld
du -sh file1.tar

# GNU compression
tar cvzf file2.tar.gz /home/nishkarshraj/Desktop/HelloWorld
du -sh file2.tar.gz


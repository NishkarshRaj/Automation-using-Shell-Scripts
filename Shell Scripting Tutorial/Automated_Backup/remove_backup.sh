#!/bin/bash

find "/backupfolder" -type f -mtime +5 -exec rm {} \;

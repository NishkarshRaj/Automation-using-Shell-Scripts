#!/bin/bash
a=20
while [ $a -lt 40 ]
do
	wget "https://nptel.ac.in/courses/111104075/pdf/Module1/Lecture$a-Module1-Anova-1.pdf"
	a=$(($a+1))
done

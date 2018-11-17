
DEBUG = False
SHELL = /bin/bash
CC = /usr/bin/gcc
OBJECTS = main.o add.o subtract.o multiply.o divide.o

ifeq ($(DEBUG),True)
	CFLAG = -Wall -g
else
	CFLAG = 
endif

mycalculator: ${OBJECTS}
	${CC} ${CFLAG} -o $@ ${OBJECTS}

%.o : %.c
	${CC} ${CFLAG} -o $@ -c $<

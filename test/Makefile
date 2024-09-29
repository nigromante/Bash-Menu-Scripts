SHELL = /bin/bash

SRCS=$(shell  find . -name '*.c' -or -name '*.cpp')
TMPFILES=$(shell  find . -name '*.c' -or -name '*.cpp'| cut -f2 -d'.')
OBJS:=$(addprefix .,$(addsuffix .o,$(TMPFILES)))

print:	
	@echo ${SRCS}
	@echo ${OBJS}

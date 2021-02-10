# make script for the ffmpeg-coder project to build the project from source code 
# By Abir-Tx


# variables
CC := g++
SRCDIR := src
BUILDDIR := bin
CFLAG := -v
INC := -I include/ffmpeg-coder
APPNAME := ffmpeg-coder

.PHONY: all

all: build run

.PHONY: build
build:
	${CC} ${CFLAG} ${SRCDIR}/${APPNAME}.cpp ${INC} -o ${BUILDDIR}/${APPNAME}.o

.PHONY: clean
clean:
	echo "Deleting the binaries...."
	rm ${BUILDDIR}/*

.PHONY: run
run:
	echo "Running the built program...."
	./${BUILDDIR}/${APPNAME}.o

# stlp - time lock puzzle cryptosystem
# See COPYING file for copyright and license details.

# stlp version
VERSION = 0.2

GMP = -lgmp
LIBS = $(GMP)

CFLAGS   = -std=c17 -pedantic -Wall
LDFLAGS  = $(LIBS)

SRC = etlp.c dtlp.c
OBJ = $(SRC:.c=o)

all: options stlp

# Show compile options set
#options:
#	echo stlp build options:
#	echo "CFLAGS  = $(CFLAGS)"
#	echo "LDFLAGS = $(LDFLAGS)"
#	echo "CC      = $(CC)"

# Compilation
.c.o:
	$(CC) -c $(CFLAGS) $<

# Linkage
etlp: etlp.o
	$(CC) -o $@ etlp.o $(LDFLAGS)

dtlp: dtlp.o
	$(CC) -o $@ dtlp.o $(LDFLAGS)

stlp: etlp dtlp

clean:
	rm -rf etlp etlp.o dtlp dtlp.o

.PHONY: all options clean
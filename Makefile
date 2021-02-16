DESTDIR?=/usr
PREFIX?=/local

ifneq ($V,1)
Q ?= @
endif

CC	= gcc
CFLAGS	= $(DEBUG) -Wall -Wextra $(INCLUDE) -Winline -pipe 

LDFLAGS	= -L$(DESTDIR)$(PREFIX)/lib
LIBS    = -lpthread -lrt -lm -lcrypt

SRC	=	src/16in.c src/comm.c

OBJ	=	$(SRC:.c=.o)

all:	16inputsp

16inputsp:	$(OBJ)
	$Q echo [Link]
	$Q $(CC) -o $@ $(OBJ) $(LDFLAGS) $(LIBS)

.c.o:
	$Q echo [Compile] $<
	$Q $(CC) -c $(CFLAGS) $< -o $@

.PHONY:	clean
clean:
	$Q echo "[Clean]"
	$Q rm -f $(OBJ) 16inputsp *~ core tags *.bak

.PHONY:	install
install: 16inputsp
	$Q echo "[Install]"
	$Q cp 16inputsp		$(DESTDIR)$(PREFIX)/bin
ifneq ($(WIRINGPI_SUID),0)
	$Q chown root.root	$(DESTDIR)$(PREFIX)/bin/16inputsp
	$Q chmod 4755		$(DESTDIR)$(PREFIX)/bin/16inputsp
endif


.PHONY:	uninstall
uninstall:
	$Q echo "[UnInstall]"
	$Q rm -f $(DESTDIR)$(PREFIX)/bin/16inputsp
	$Q rm -f $(DESTDIR)$(PREFIX)/man/man1/16inputsp.1

PROJECT=disktool
CC=gcc
DEFS= -Wall
INCDIR=
INCS=
LIBDIR=
LIBS=
OBJS=\
	allocau.o \
	checkwrite.o \
	create.o \
	delchain.o \
	dideread.o \
	didewrite.o \
	extendfile.o \
	finddirent.o \
	dirempty.o \
	freedirent.o \
	lmptosec.o \
	lmptosecofs.o \
	loaddirent.o \
	nextsec.o \
	o_chdir.o \
	o_close.o \
	o_delete.o \
	o_mkdir.o \
	o_open.o \
	o_read.o \
	o_rename.o \
	o_rmdir.o \
	o_write.o \
	opencd.o \
	openmd.o \
	readlump.o \
	readsyssec.o \
	savesyssec.o \
	searchdir.o \
	sectolmp.o \
	seekend.o \
	setdatetime.o \
	setfileflags.o \
	splitpath.o \
	validfn.o \
	writelump.o \
	writesyssec.o \
	zerolump.o \
	fsck.o \
	main.o

$(PROJECT): $(OBJS)
	$(CC) $(DEFS) $(LIBDIR) $(OBJS) $(LIBS) -o $(PROJECT)

.c.o:
	$(CC) $(DEFS) $(INCDIR) $(INCS) -c $< -o $@

clean:
	-rm -f $(OBJS)
	-rm -f $(PROJECT)

install:
	cp $(PROJECT) /usr/local/bin
	chmod a+x /usr/local/bin/$(PROJECT)

main.o:      header.h main.c


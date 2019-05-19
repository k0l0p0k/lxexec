
CC = gcc

#CFLAGS = -Wall			 	\
#	-DG_DISABLE_DEPRECATED 	 	\
#	-DGDK_DISABLE_DEPRECATED 	\
#	-DGDK_PIXBUF_DISABLE_DEPRECATED \
#	-DGTK_DISABLE_DEPRECATED

CFLAGS = 
	
lxexec: exec_gui_main.c exec_gui_main.h
	$(CC) exec_gui_main.c -o lxexec $(CFLAGS) `pkg-config gtk+-2.0 --cflags --libs`	
	

clean: 
	rm -f *.o lxexec

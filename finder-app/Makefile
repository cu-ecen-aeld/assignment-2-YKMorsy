.PHONY: all
all: writer

.PHONY: clean
clean:
	rm -f writer *.o

ifeq ($(CROSS_COMPILE),)
CC = gcc
else
CC = $(CROSS_COMPILE)gcc
endif

CFLAGS = -Wall -Wextra

SRCS = writer.c

OBJS = $(SRCS:.c=.o)

writer: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o writer

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@



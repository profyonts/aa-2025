CC      := gcc
CFLAGS  := --std=c17

SRCS    := compute.c \
			student.c

BINS    := $(SRCS:.c=)

.PHONY: all clean
all: $(BINS)

%: %.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f $(BINS)

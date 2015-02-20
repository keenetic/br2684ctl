OPTS := -O2
CFLAGS := -Wall -g
LIBS :=
OBJS := $(patsubst %.c,%.o,$(wildcard *.c))

all: br2684ctl

br2684ctl: $(OBJS)
	$(CC) $(OPTS) $(CFLAGS) $(LIBS) $^ -o $@

distclean: clean
clean:
	rm -f br2684ctl *.o


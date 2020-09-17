CC ?= gcc
SRC_FILES = *.c

all: musl-addons

musl-addons: $(SRC_FILES)
	$(CC) $(TARGET_CFLAGS) -o $@ $^ $(TARGET_LDFLAGS)

clean:
	rm -f musl-addons *.o

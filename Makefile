CC = gcc
CFLAGS = -nostdlib
TARGET = cat2
PREFIX = /usr/local/bin

all: $(TARGET)

$(TARGET): cat.S
	$(CC) $(CFLAGS) -o $(TARGET) cat.S
	chmod +x $(TARGET)
	install -m 755 $(TARGET) $(PREFIX)/$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: all clean

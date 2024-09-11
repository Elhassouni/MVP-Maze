# Compiler
CC = gcc

# Compiler flags (for compilation)
# Compiler flags (for compilation)
CFLAGS = -Wall -Werror -Wextra -pedantic -g -I/usr/include/SDL2 -I./include
# Linker flags (for linking)
LDFLAGS = -L/usr/lib/x86_64-linux-gnu -lSDL2

# Target executable
TARGET = maze

# Source files
SOURCES = src/main.c src/maze.c

# Object files
OBJECTS = $(SOURCES:.c=.o)

# Default target
all: $(TARGET)

# Rule to build the target
$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS) $(LDFLAGS)

# Rule to build object files
%.o: %.c
	$(CC) -c -o $@ $< $(CFLAGS)

# Clean up build files
clean:
	rm -f $(TARGET) $(OBJECTS)
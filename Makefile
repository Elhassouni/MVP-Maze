# Compiler
CC = gcc

# Compiler flags
CFLAGS = -I/usr/include/SDL2

# Linker flags
LDFLAGS = -L/usr/lib/x86_64-linux-gnu -lSDL2

# Target executable
TARGET = maze

# Source files
SOURCES = maze.c

# Default target
all: $(TARGET)

# Rule to build the target
$(TARGET): $(SOURCES)
    $(CC) -o $(TARGET) $(SOURCES) $(CFLAGS) $(LDFLAGS)

# Clean up build files
clean:
    rm -f $(TARGET)
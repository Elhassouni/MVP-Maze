#ifndef HEADER_H
#define HEADER_H

#include <SDL2/SDL.h>
#include <stdbool.h>

// Screen dimension constants
extern const int SCREEN_WIDTH;
extern const int SCREEN_HEIGHT;

// Function declarations
bool init();
bool loadMedia();
void close();
void drawWalls(SDL_Renderer *renderer);

// The window we'll be rendering to
extern SDL_Window* gWindow;

// The renderer contained by the window
extern SDL_Renderer* gRenderer;

#endif // HEADER_H
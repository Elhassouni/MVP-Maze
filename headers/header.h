#ifndef HEADER_H
#define HEADER_H

#include <SDL2/SDL.h>

// Screen dimension constants
const int SCREEN_WIDTH = 640;
const int SCREEN_HEIGHT = 480;

// My function declarations
bool init();
bool loadMedia();
void close();

// The window we'll be rendering to
extern SDL_Window* gWindow;

// The surface contained by the window
extern SDL_Surface* gScreenSurface;

// The image we will load and show on the screen
extern SDL_Surface* gHelloWorld;

#endif // HEADER_H
#ifndef SCREEN_H
#define SCREEN_H

#include <SDL.h>

namespace caveofprogramming
{

class Screen
{
private:
	SDL_Window *m_window;
	SDL_Renderer *m_renderer;
	SDL_Texture *m_texture;
	Uint32 * m_buffer1;
	Uint32 * m_buffer2;
public:
    const static int SCREEN_WIDTH = 800;
    const static int SCREEN_HEIGHT = 600;

	Screen();
	~Screen();
	bool init();
	bool processEvents();
	void close();
	void setPixel(int x, int y, Uint32 red, Uint32 green, Uint32 blue);
	void update();
	void clear();
	void boxBlur();
};

}

#endif // SCREEN_H
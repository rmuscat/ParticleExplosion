#include <stdio.h>
#include <SDL.h> 
#include <string.h>
#include "Screen.h"


namespace caveofprogramming {
	Screen::Screen(): 	m_window(NULL), m_renderer(NULL), m_texture(NULL), m_buffer1(NULL), m_buffer2(NULL)
	{
	}

	bool Screen::init()
	{
		  if (SDL_Init(SDL_INIT_VIDEO) < 0) {
			printf("Could not SDL_Init");
			return false;
		  }
		  
		  m_window = SDL_CreateWindow("Particle Fire Robxplosion", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN); 
		  
		  if(m_window==NULL)
		  {   
			printf("Could not create window: %s\n", SDL_GetError());
			return false;
		  }
		  
		  m_renderer = SDL_CreateRenderer(m_window,-1, SDL_RENDERER_PRESENTVSYNC);
		  if (m_renderer == NULL) {
			  printf("Could not create renderer");
			  SDL_DestroyWindow(m_window);
			  return false;
		  }
		  m_texture = SDL_CreateTexture(m_renderer,SDL_PIXELFORMAT_ARGB8888, SDL_TEXTUREACCESS_STATIC,SCREEN_WIDTH, SCREEN_HEIGHT );
		  if (m_texture == NULL) {
			  printf("Could not create texture");
			  SDL_DestroyWindow(m_window);
			  SDL_DestroyRenderer(m_renderer);
			  return false;
		  }
		  m_buffer1 = new Uint32[SCREEN_WIDTH * SCREEN_HEIGHT];
		  memset(m_buffer1, 0 ,SCREEN_WIDTH*SCREEN_HEIGHT*sizeof(Uint32));
		  m_buffer2 = new Uint32[SCREEN_WIDTH * SCREEN_HEIGHT];
		  memset(m_buffer2, 0 ,SCREEN_WIDTH*SCREEN_HEIGHT*sizeof(Uint32));
		  
		  // m_buffer2 = new Uin32[SCREEN_WIDTH * SCREEN_HEIGHT];		  
		return true;
	}
	
	bool Screen::processEvents() {
		SDL_Event event;
		while (SDL_PollEvent(&event)) {
			if (event.type == SDL_QUIT) {
				return true;
			}
		}
		return false ;
	}
	
	void Screen::setPixel (int x, int y, Uint32 r, Uint32 g, Uint32 b) {
		if (x < 0 || x >= SCREEN_WIDTH || y < 0 || y >= SCREEN_HEIGHT) {
			return;
		}
		int color = (0 << 24) + (r << 16) + (g << 8) + (b << 0);
//		  for (int i=0; i < SCREEN_HEIGHT*SCREEN_WIDTH; i++)
//			m_buffer1[i] = 0xFF00FF99;
		m_buffer1[x+(y*SCREEN_WIDTH) ] = color;
		return;
	}
	
	void Screen::clear() {
		memset(m_buffer1, 0 ,SCREEN_WIDTH*SCREEN_HEIGHT*sizeof(Uint32));
	}
	
	void Screen::boxBlur() {
		Uint32 *m_swap;
		m_swap = m_buffer1; 
		m_buffer1 = m_buffer2;
		m_buffer2 = m_swap;
		
		for(int y = 0; y < SCREEN_HEIGHT; y++) {
			for(int x=0; x< SCREEN_WIDTH; x++ ) {
				int redTotal = 0, greenTotal=0, blueTotal =0;
				for(int row=-1; row <= 1; row++){
					for(int col=-1; col <= 1; col++ ) {
						int currentX = x + col;
						int currentY = y + row;
					
						if (currentX >= 0 && currentX < SCREEN_WIDTH && currentY >=0 && currentY < SCREEN_HEIGHT) {
							Uint32 color = m_buffer2[currentY*SCREEN_WIDTH + currentX];
							Uint8 red = color >> 16; 
							Uint8 green = color >> 8; 
							Uint8 blue = color >> 0;
							redTotal += red;
							greenTotal += green;
							blueTotal += blue;
						}
					}
				}
				Uint8 red = redTotal / 9;
				Uint8 green = greenTotal / 9;
				Uint8 blue = blueTotal / 9;
				setPixel(x,y,red,green,blue);
			}
			
		}
		
	}
	
	void Screen::update() {
		  SDL_UpdateTexture(m_texture,NULL,m_buffer1,SCREEN_WIDTH * sizeof(Uint32));
		  SDL_RenderClear(m_renderer);
		  SDL_RenderCopy(m_renderer,m_texture,NULL,NULL);
		  SDL_RenderPresent(m_renderer);
	}
	
	void Screen::close(){
		  delete m_buffer1;
		  delete m_buffer2;
		  SDL_DestroyWindow(m_window);
		  SDL_DestroyTexture(m_texture);
		  SDL_DestroyRenderer(m_renderer);
		  SDL_Quit(); 
	}

	Screen::~Screen()
	{
	}

}
#include <SDL.h> 
#include <stdio.h>
#include <string.h>
#include <Screen.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include "Swarm.h"

using namespace caveofprogramming;

int WinMain( int argc, char* args[] ) 
{
	srand(time(NULL));
    Screen s ;
	Swarm swarm;
	
	if (s.init() == false) {
		printf("Error running Screen::init()");
	} 

	  while (true) {
		Uint32 r,g,b;
		int elapsed = SDL_GetTicks();
		unsigned char green = (unsigned char) ((1 + sin(elapsed * 0.0008)) * 127);
		unsigned char red = (unsigned char) ((1 + sin(elapsed * 0.0006)) * 127);
		unsigned char blue = (unsigned char) ((1 + sin(elapsed* 0.0009)) * 127);
		/*
		for (int y=0; y < Screen::SCREEN_HEIGHT; y++){
			for (int x=0; x < Screen::SCREEN_WIDTH; x++) {
				s.setPixel(x,y,red,green,blue);
			}
		}
		s.setPixel(Screen::SCREEN_WIDTH/2,Screen::SCREEN_HEIGHT/2,255,255,255);
		*/
		swarm.update(elapsed);
		const Particle * const pParticles = swarm.getParticles();
		for (int i = 0; i < swarm.NPARTICLES; i++) {
			Particle particle = pParticles[i]; 
			int x = (particle.m_x + 1) * Screen::SCREEN_WIDTH/2;
			int y = (particle.m_y * Screen::SCREEN_WIDTH/2) + Screen::SCREEN_HEIGHT/2;
			int c = (1.0*rand() / RAND_MAX) * 255;
			s.setPixel(x,y,red,green,blue);
		}
		s.boxBlur();
		s.update();
		// s.clear();
		
		if (s.processEvents() ) { break; };
	  }

	s.close();
   return 0;   
}
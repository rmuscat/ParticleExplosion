#ifndef SWARM_H
#define SWARM_H

#include "particle.h"
namespace caveofprogramming
{

class Swarm
{
private:
	Particle * m_particles;
	int lastTime;
public:
	const static int NPARTICLES = 5000;
	Swarm();
	~Swarm();
	const Particle * const getParticles() { return m_particles; } //  
	void update(int milliseconds);

};

}

#endif // SWARM_H

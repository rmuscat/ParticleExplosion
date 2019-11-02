#ifndef PARTICLE_H
#define PARTICLE_H

namespace caveofprogramming
{

class Particle
{
private:
	void init();
	
public:
	double m_x, m_y, m_speed, m_direction ; 
	Particle();
	virtual ~Particle();
	void update(int interval);
};

}

#endif // PARTICLE_H

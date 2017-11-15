#include "Config.h"
#include "Parser.h"
#include <stdio.h>
int main(void)
{
	
	cfg::Config config;    
	
	
	config.set_value("graphic", "width", 800);
	config.save("user.cfg");

	cfg::Config cfg;       
	cfg.load("user.cfg"); 
	unsigned int width = cfg.get_value<unsigned int>("graphic", "width", 800);

	printf("w=%d\r\n",width);

}

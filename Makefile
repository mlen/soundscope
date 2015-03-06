all: soundscope

ifeq ($(shell uname -s), Darwin)
soundscope: soundscope.cpp Makefile
	$(CXX) -O2 -o soundscope soundscope.cpp `sdl-config --cflags` `sdl-config --libs` -framework OpenGL
else
soundscope: soundscope.cpp Makefile
	$(CXX) -O2 -o soundscope soundscope.cpp `sdl-config --cflags` `sdl-config --libs` -L/usr/local/lib -lGL
endif

clean:
	rm soundscope


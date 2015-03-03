all: soundscope

soundscope: soundscope.cpp Makefile
	$(CXX) -O2 -o soundscope soundscope.cpp `sdl-config --cflags` `sdl-config --libs` -L/usr/local/lib -lGL

clean:
	rm soundscope


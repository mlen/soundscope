all: soundscope

soundscope: soundscope.cpp Makefile
	clang++ -g -o soundscope soundscope.cpp `sdl-config --cflags` `sdl-config --libs` -L/usr/local/lib -lGL -lpthread -lm

clean:
	rm soundscope


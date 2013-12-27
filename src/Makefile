OBJ = \
	charset.o jymain.o luafun.o mainmap.o piccache.o sdlfun.o

HEADERS = \
	config.h list.h luafun.h

CC = gcc
CXX = g++

TARGET = jysdllua

BASEFLAGS = -g3 -D_DEBUG=1
#BASEFLAGS = -s -O3

CFLAGS = ${BASEFLAGS} `sdl-config --cflags` -I/usr/include/lua5.1 -I/usr/include/smpeg
LDFLAGS = ${BASEFLAGS} `sdl-config --libs` -lSDL_image -lSDL_mixer -lSDL_ttf -llua5.1

#CFLAGS += -DHAS_SDL_MPEG=1
#LDFLAGS += -lsmpeg

all: ${TARGET}

${TARGET}: ${OBJ}
	${CXX} ${LDFLAGS} -o ${TARGET} ${OBJ}

clean:
	rm -f *.o ${TARGET}

distclean:
	rm -f *.o ${TARGET}

%.o:    %.cpp ${HEADERS}
	${CXX} ${CFLAGS} -c $< -o $@

%.o:    %.c ${HEADERS}
	${CC} ${CFLAGS} -c $< -o $@


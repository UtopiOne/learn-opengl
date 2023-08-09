all: start

start: main.o glad.o shader.o stb_image.o
	clang++ -o x64/main x64/main.o x64/glad.o x64/shader.o x64/stb_image.o -ldl -lglfw

main.o: src/main.cpp 
	clang++ -c src/main.cpp -o x64/main.o

glad.o: src/glad.c
	clang++ -c src/glad.c -o x64/glad.o

shader.o: src/shader.cpp src/shader.h
	clang++ -c src/shader.cpp -o x64/shader.o

stb_image.o: src/stb_image.cpp src/stb_image.h
	clang++ -c src/stb_image.cpp -o x64/stb_image.o

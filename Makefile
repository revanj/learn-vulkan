CFLAGS = -std=c++17 -O2 -DDEBUG -g

LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

debug: CFLAGS += 
VulkanTest: main.cpp
	g++ $(CFLAGS) -o VulkanTest main.cpp $(LDFLAGS)
    
.PHONY: test clean



test: VulkanTestg
	./VulkanTest

clean:
	rm -f VulkanTest

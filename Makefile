CXX      := g++
CXXFLAGS := -std=c++17 -Wall -Wextra -g -pthread

build/smoke: src/smoke.cpp
	mkdir -p build
	$(CXX) $(CXXFLAGS) $< -o $@

.PHONY: clean
clean:
	rm -rf build

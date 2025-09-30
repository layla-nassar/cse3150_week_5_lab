CXX = g++
CXXFLAGS = -std=c++17 -g -Wall -Wextra

TARGET = solution
SRC = solution.cpp

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET) *.o game_output.csv

test: $(TARGET)
	pytest -q --disable-warnings

CC=g++
CFLAGS=-Iinclude

SRC_DIR=src
BUILD_DIR=build
BIN_DIR=bin

TARGET=$(BIN_DIR)/myapp
SRC_FILES=$(wildcard $(WORKSPACE)/$(SRC_DIR)/*.cpp)
OBJ_FILES=$(patsubst $(WORKSPACE)/$(SRC_DIR)/%.cpp,$(WORKSPACE)/$(BUILD_DIR)/%.o,$(SRC_FILES))

$(TARGET): $(OBJ_FILES)
    @mkdir -p $(WORKSPACE)/$(BIN_DIR)
    $(CC) -o $@ $^

$(WORKSPACE)/$(BUILD_DIR)/%.o: $(WORKSPACE)/$(SRC_DIR)/%.cpp
    @mkdir -p $(WORKSPACE)/$(BUILD_DIR)
    $(CC) $(CFLAGS) -c -o $@ $<

clean:
    rm -rf $(WORKSPACE)/$(BUILD_DIR) $(WORKSPACE)/$(BIN_DIR)


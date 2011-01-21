BUILD_DIR=../build
INCLUDES=../thirdparty/boost-spirit
CCFLAGS= -I $(INCLUDES)

DOMAIN_SRC = DomainParser.cpp PddlDomainGrammar.cpp PddlCommon.cpp

# files to build domain parser
# driver for domain parser
DOMAIN_MAIN_FILE = DomainParserDriver.cpp

# sources for building ppcpp library, includes everything but driver files
LIBRARY_SRC = $(DOMAIN_SRC) 






# THERE IS USUALLY LESS NEED TO CHANGE THE CODE BELOW (compared to that above)

all: $(BUILD_DIR)/domainParser

$(BUILD_DIR)/%.o: %.cpp
	g++ $(CCFLAGS) -c $< -o $@

DOMAIN_OBJ= $(addprefix $(BUILD_DIR)/, $(addsuffix .o, $(basename $(DOMAIN_SRC))))

$(BUILD_DIR)/domainParser: $(DOMAIN_OBJ)
	@echo 'g++ $(DOMAIN_OBJ) -o $@'
	g++ $(DOMAIN_OBJ) $(DOMAIN_MAIN_FILE) -o $@ 

LIBRARY_OBJ = $(addprefix $(BUILD_DIR)/, $(addsuffix .o, $(basename $(LIBRARY_SRC))))

# creating static library
$(BUILD_DIR)/libppcpp.a: $(LIBRARY_OBJ)
	rm -f $@
	ar cq $(LIBRARY_OBJ) $@ 

clean:
	rm -i $(BUILD_DIR)/*

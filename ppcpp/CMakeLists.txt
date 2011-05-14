# This file is used by cmake. This file contains all definitions global to ppcpp. 

set( CMAKE_VERBOSE_MAKEFILE 1 )

# Compiler options

IF(UNIX) 
    # ASSUMING USING G++-4 ON LINUX
    #
    # add definition -pg for using gprof for profiling
    
    ADD_DEFINITIONS(-g3 -Wall -fPIC -Werror -pedantic --std=c++0x) # -Wextra cannot be used because of warnings in TBB
    
    #SET(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} -pg)
    # now, supressing certain warnings
    
    ADD_DEFINITIONS(-Wno-long-long -Wno-deprecated -Wno-variadic-macros) 
    
    # no-long-long suppress the warning related to long long -- is needed for TBB; 
    # no-ignored-qualifiers suppresses the warning related to "type qualifiers ignored 
    #       on function return type" -- is needed for boost/ptr_container.h. 
    # no-deprecated suppressed the warning related to "deprecated header" -- is needed for boost;
    # no-variadic-macros suppressed the warning related to "variadic macros" -- is needed for wxWidgets;
    #
    # Note that in the future, these warnings may not need to be suppressed as the libraries mature.
    
ELSEIF (WIN32)
    # ASSUMING USING VISUAL STUDIO 9 ON WINDOWS
    #
    
    ADD_DEFINITIONS(/W4)
    ADD_DEFINITIONS(/we4100) # error: unreferenced formal parameter
    ADD_DEFINITIONS(/we4101) # error: 'identifier' : unreferenced local variable
    ADD_DEFINITIONS(/we4150) # error: deletion of pointer to incomplete type 'type'; no destructor called
    ADD_DEFINITIONS(/we4189) # error: variable initialized by not referenced
    ADD_DEFINITIONS(/we4172) # error: returning address of local variable or temporary
    ADD_DEFINITIONS(/we4019) # error: A semicolon at global scope is not preceded by a statement.
    ADD_DEFINITIONS(/wd4512) # disable: 'class' : assignment operator could not be generated
    
ENDIF ()



ADD_DEFINITIONS(-DDEBUG -D_UNICODE -DUNICODE) 

# setting include directories
set(INCLUDE_DIRECTORIES_LIST
    "${CMAKE_SOURCE_DIR}"
    "${CMAKE_SOURCE_DIR}/thirdparty/boost-spirit"
)

INCLUDE_DIRECTORIES(
    ${INCLUDE_DIRECTORIES_LIST}
)

















######################## CONTENTS FOR SOURCE FILES ########################

# This file is used by cmake to produce libraries. This file contains the list 
# of source files arranged into separate modules. Each module builds into
# a library.
#
# On linux, the list of source files (excluding test files) was generated using 
# the following command at "ppcpp/" directory:
#
# find <dir> \( -name "*.h" -or -name "*.cpp" \) | grep -v -w test | sort
#
# where <dir> = planmanager, plan, etc
#
# SEE ALSO: tests.cmake that lists all files related to tests

#
# NOTE: PLEASE FOLLOW ALPHABETIC ORDER FOR LISTING SOURCE FILES
#

##SOURCE_GROUP("/" REGULAR_EXPRESSION "/")
##SOURCE_GROUP("casebasedplanning" REGULAR_EXPRESSION "casebasedplanning/")
##SOURCE_GROUP("casebasedplanning/planner" REGULAR_EXPRESSION "casebasedplanning/planner/")
##SOURCE_GROUP("casebasedplanning/structure" REGULAR_EXPRESSION "casebasedplanning/structure/")


SET(ppcpp_core_SRCS

# List of classes that are already in the repository.
# C++ files that aren't actually included for compilation yet are commented out.
# (It is recommended for existing .H files to be always uncommented out even
# when they are not used, since they won't get compiled anyway; it would be a
# bigger problem if any .CPP actually depends on the file and yet it doesn't show
# on the Visual Studio solution explorer.)

DomainParser.cpp
DomainParser.h
PddlCommon.cpp
PddlCommon.h
PddlDomainGrammar.cpp
PddlDomainGrammar.h
ProblemParser.h
)

ADD_LIBRARY(ppcpp_core ${ppcpp_core_SRCS})














######################## CONTENTS FOR SOURCE FILES ########################

# This file is used by cmake to produce tests and executables. This file contains the list 
# of test files arranged into separate executables. Each test builds into an executable.
#
# Each test should be named so that it is uniquely identifiable in the whole of Crackpot.
#
# To add an (non-test) executable
#--------------------------------
# use cmake ADD_EXECUTABLE command
#
# To add a test
#--------------
# use macro CP_TESTFILE defined below
#

# Macro for defining tests: 
#
# Usage: CP_TESTFILE(<test-name> <main-file-name> [config]) 
# "config" can be used to specify WIN32, needed for Windows applications (as opposed to console applications) needed for GUI. 
#
MACRO(CP_TESTFILE CP_TESTNAME MAINFILE)
SET(_CP_EXEC_SRCS ${MAINFILE} )
IF (${ARGC} MATCHES 3)
   ADD_EXECUTABLE(${CP_TESTNAME} ${ARGV2} ${_CP_EXEC_SRCS})
ELSE (${ARGC} MATCHES 3)
   ADD_EXECUTABLE(${CP_TESTNAME} ${_CP_EXEC_SRCS})
ENDIF (${ARGC} MATCHES 3)
ADD_TEST(${CP_TESTNAME} ${CP_TESTNAME})
ENDMACRO(CP_TESTFILE)


SET(ppcpp_test_SRCS
test/TestPddlParser.cpp
)
ADD_LIBRARY(ppcpp_test ${ppcpp_test_SRCS})

# called "Interactive" as it receives user input
CP_TESTFILE(TestDomainParserInteractive
    DomainParserDriver.cpp
)
TARGET_LINK_LIBRARIES(TestDomainParserInteractive 
    ppcpp_core 
)

CP_TESTFILE(TestParser
    test/TestPddlParser.cpp
)
TARGET_LINK_LIBRARIES(TestParser 
    ppcpp_core 
)

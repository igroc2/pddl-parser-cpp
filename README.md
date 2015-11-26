# Introduction #

There does not seem to be a standard PDDL Parser in C++. pddl-parser-cpp (ppcpp, in short) is an attempt to fill this gap.

The current version [r12](https://code.google.com/p/pddl-parser-cpp/source/detail?r=12) of the parser is essentially incomplete. The only thing it is known to perform is able to read the domain file `samples/ipc2006/DOMAINS/openstacks/MetricTime/domain.pddl`. Defining the grammar for problem files and parsing the problem files still remains to be done.

The parser is implemented using boost::spirit.

# Build #

This is a CMake-based project. CMake can be used to generate Visual Studio Project files on Windows and Makefiles on Unix. On Ubuntu, do the following:

`apt-get install cmake`

`cd <ppcpp-root-dir>/build`

`cmake .. && make`

A static library for the parser with .a extension is generated in `./ppcpp` directory.

# Roadmap #

  * Attach actions to the domain-parser to produce C++ objects.
  * Define grammar for the problem-parser.
  * Attach actions to the problem-parser to produce C++ objects.
  * (Possibly) Move from boost::spirit::classic to using the new version of boost::spirit.

#include "DomainParser.h"
#include <iostream>


int main(int argc, char* argv[])
{
    if (argc > 1)
    {
        for (int i = 1; i < argc; ++i)
        {
            std::cout << argv[i] << std::endl;
            DomainParser p;
            p.parseDomain(argv[i]);
        }
    }
    else
    {
        std::cerr << "Usage: " << argv[0] << " path/to/pddl/filename" << std::endl;
    }
    return 0;
}

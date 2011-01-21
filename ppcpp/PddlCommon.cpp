#include "PddlCommon.h"

std::auto_ptr<pddl_skipper> create_pddl_skipper()
{
    return std::auto_ptr<pddl_skipper>(new pddl_skipper);
}



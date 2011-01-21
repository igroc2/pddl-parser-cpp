#include "PddlDomainGrammar.h"

std::auto_ptr<pddl_grammar> create_pddl_grammar()
{
    return std::auto_ptr<pddl_grammar>(new pddl_grammar);
}


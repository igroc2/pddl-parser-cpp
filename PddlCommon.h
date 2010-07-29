#ifndef PDDL_COMMON_H
#define PDDL_COMMON_H

#include <boost/spirit/include/classic_core.hpp>
#include <boost/spirit/include/classic_grammar.hpp>
#include <boost/spirit/include/classic_symbols.hpp>

using namespace boost::spirit::classic;

///////////////////////////////////////////////////////////////////////////////
//
//  The PDDL White Space Skipper
//
///////////////////////////////////////////////////////////////////////////////
struct pddl_skipper : public grammar<pddl_skipper>
{
    pddl_skipper() {}

    template <typename ScannerT>
    struct definition
    {
        definition(pddl_skipper const& /*self*/)
        {
            skip
                =   space_p
                |   ';' >> (*(anychar_p - '\n')) >> '\n'      //  pddl comment 
            ;

            #ifdef BOOST_SPIRIT_DEBUG
            BOOST_SPIRIT_DEBUG_RULE(skip);
            #endif
        }

        rule<ScannerT>  skip;
        rule<ScannerT> const&
        start() const { return skip; }
    };
};

#endif

/// PDDL Parser Grammar for Spirit. 
///
/// Adapted from "Antlr grammar for PDDL 3.0" 
/// Zeyn Saigol (http://www.antlr.org/grammar/1222962012944/Pddl.g)
///
/// Notes on ANTLR grammar
/// ---------------------
/// ! means throw away that part while building the token's string value. 
/// ^ means the current node should become the root for the AST.

#define BOOST_SPIRIT_DEBUG  ///$$$ DEFINE THIS WHEN DEBUGGING $$$///
#include "boost/spirit/include/qi.hpp"
#include "boost/spirit/include/qi_operator.hpp"
#include "boost/spirit/include/qi_string.hpp"
#include "boost/spirit/include/qi_directive.hpp"
#include "boost/spirit/include/qi_char.hpp"
#include "boost/spirit/include/qi_debug.hpp"
#include <boost/spirit/include/classic_grammar.hpp>
#include <boost/spirit/include/classic_symbols.hpp>

#include <fstream>
#include <iostream>
#include <vector>

///////////////////////////////////////////////////////////////////////////////
using namespace std;
//using namespace boost::spirit::classic;
using namespace boost::spirit;
using boost::spirit::lexeme;
using boost::spirit::lit;
using boost::spirit::ascii::no_case;
using boost::spirit::ascii::alpha;
using boost::spirit::ascii::alnum;
using boost::spirit::ascii::digit;
using boost::spirit::ascii::space;


///////////////////////////////////////////////////////////////////////////////
//
//  The PDDL White Space Skipper
//
///////////////////////////////////////////////////////////////////////////////
template <typename Iterator>
struct pddl_skipper : public qi::grammar<Iterator, unsigned()>
{
        pddl_skipper() : pddl_skipper::base_type(start())
        {
            skip
                =   space
                |   ';' >> (*(char_ - '\n')) >> '\n'      //  pddl comment 
            ;

            #ifdef BOOST_SPIRIT_DEBUG
            BOOST_SPIRIT_DEBUG_NODE(skip);
            #endif
        }

        qi::rule<Iterator, unsigned()> skip;
        qi::rule<Iterator, unsigned()> 
                const& start() const { return skip; }
};

template <typename Iterator>
struct pddl_grammar : public qi::grammar<Iterator, unsigned(), pddl_skipper<Iterator> >
{
        pddl_grammar() : pddl_grammar::base_type(start())
        {
            #ifdef BOOST_SPIRIT_DEBUG
            debug(); // define the debug names
            #endif

            //-----------------------------------------------------------------
            // KEYWORDS
            //-----------------------------------------------------------------
            keywords =
                "define", "domain", "requirements", "types";

            //-----------------------------------------------------------------
            // COMMON OPERATORS
            //-----------------------------------------------------------------
            char     LPAREN('(');
            char     RPAREN(')');
            char     DASH('-');

            //-----------------------------------------------------------------
            // TOKENS
            //-----------------------------------------------------------------
//            typedef inhibit_case<strlit<> > token_t;

 //           token_t DEFINE         = no_case["define"];
            /// If the _ is removed from DOMAIN_, using gcc 4.4.1, 
            /// I get compilation error: "error: expected unqualified-id before numeric constant"
  //          token_t DOMAIN_        = no_case["domain"];  
   //         token_t REQUIREMENTS   = no_case[":requirements"];  

            //-----------------------------------------------------------------
            //  Start grammar definition
            //-----------------------------------------------------------------
            identifier
                = no_case[
                    lexeme[
                        (alpha >> *(alnum | '-' | '_'))
//                        - (keywords >> char_ - (alnum | '-' | '_'))
                    ]
                ];

            pddlDoc
                =   domain; //| problem;

            domain
                =   lit('(') >> "define" >> domainNameClause
                        >> !requireDef  
                        >> !typesDef   
                        >> !constantsDef 
                        >> !predicatesDef
                        >> !functionsDef
                        >> !constraints
                        >>  *structureDef 
                    >> lit(')') >> lexeme[*skipAtEnd]; 
                    //>> lit(')'); <--- does not work due to "trailing whitespace" bug: http://article.gmane.org/gmane.comp.parsers.spirit.general/4029

            domainNameClause
                =  lit('(') >> "domain" >> domainName 
                          >> lit(')');

            domainName 
                = identifier;

            requireDef 
                = lit('(') >> ":requirements" >> +requireKey 
                         >> lit(')');

            requireKey
                = no_case[":strips"]
                    | no_case[":typing"]
                    | no_case[":negative-preconditions"]
                    | no_case[":disjunctive-preconditions"]
                    | no_case[":equality"]
                    | no_case[":existential-preconditions"]
                    | no_case[":universal-preconditions"]
                    | no_case[":quantified-preconditions"]
                    | no_case[":conditional-effects"]
                    | no_case[":fluents"]
                    | no_case[":adl"]
                    | no_case[":durative-actions"]
                    | no_case[":derived-predicates"]
                    | no_case[":timed-initial-literals"]
                    | no_case[":preferences"]
                    | no_case[":constraints"]
                    | no_case[":action-costs"]
                    | no_case[":goal-utilities"]
                    | no_case[":object-fluents"]
                    ;

            typesDef
                 =  lit('(') >> no_case[":types"] 
                           >> typedNameList >> lit(')');

            // If have any typed names, they must come FIRST!
            typedNameList
                 =  (+singleTypeNameList >> *identifier | *identifier);
                 //=  (*identifier | +singleTypeNameList >> *identifier); <-- didn't work for "(:constants no-block - block)"

            singleTypeNameList
                 = +identifier >> DASH >> identifier;

            functionsDef
                 = lit('(') >> no_case[":functions"] >> functionList >> lit(')');

            functionList
                 = *(+atomicFunctionSkeleton >> !(DASH >> functionType));

            atomicFunctionSkeleton
	         = lit('(') >> functionSymbol >> typedVariableList  >> lit(')');

            functionSymbol  = NAME ;
        
            NAME = identifier;

            VARIABLE  = '?' >> identifier;

            NUMBER  = +digit >> !('.' >> +digit);

            functionType  = identifier;

            constantsDef
	         = lit('(') >> no_case[":constants"] >> typedNameList 
                          >> lit(')');

            predicatesDef
	         = lit('(') >> no_case[":predicates"] >> +atomicFormulaSkeleton
                          >> lit(')');

            atomicFormulaSkeleton
	         = lit('(') >> predicate >> typedVariableList >> lit(')');

            predicate 
                = identifier;

            // If have any typed variables, they must come FIRST!
            typedVariableList
                = (+singleTypeVarList >> *VARIABLE | *VARIABLE);
                // = (*VARIABLE | +singleTypeVarList >> *VARIABLE); <--- didn't work for (:predicates (on-table ?x - block))

            singleTypeVarList
                = (+VARIABLE >> DASH >> identifier);

            constraints
	        = lit('(') >> no_case[":constraints"] >> conGD >> lit(')');

/************* CONSTRAINTS ****************************/

            conGD
               = lit('(') >> no_case["and"] >> *conGD >> lit(')')
                    | lit('(') >> no_case["forall"] >> lit('(') >> typedVariableList >> lit(')') >> conGD >> lit(')')
                    | lit('(') >> no_case["at"] >> no_case["end"] >> goalDesc >> lit(')')
                    | lit('(') >> no_case["always"] >> goalDesc >> lit(')')
                    | lit('(') >> no_case["sometime"] >> goalDesc >> lit(')')
                    | lit('(') >> no_case["within"] >> NUMBER >> goalDesc >> lit(')')
                    | lit('(') >> no_case["at-most-once"] >> goalDesc >> lit(')')
                    | lit('(') >> no_case["sometime-after"] >> goalDesc >> goalDesc >> lit(')')
                    | lit('(') >> no_case["sometime-before"] >> goalDesc >> goalDesc >> lit(')')
                    | lit('(') >> no_case["always-within"] >> NUMBER >> goalDesc >> goalDesc >> lit(')')
                    | lit('(') >> no_case["hold-during"] >> NUMBER >> NUMBER >> goalDesc >> lit(')')
                    | lit('(') >> no_case["hold-after"] >> NUMBER >> goalDesc >> lit(')')
                    ;



            structureDef
                = actionDef
                    | durativeActionDef
                    | derivedDef
                    ;

/************* ACTIONS ****************************/

            actionDef
	        = lit('(') >> no_case[":action"] >> actionSymbol
	                 >> no_case[":parameters"] 
                         >> lit('(') >> typedVariableList >> lit(')')
                         >> actionDefBody >> lit(')');

            actionSymbol 
                = identifier;

// Should allow preGD instead of goalDesc for preconditions -
// but I can't get the LL(*) parsing to work
// This means 'preference' preconditions cannot be used
            actionDefBody
	        = !( conditionSymbol >> ((lit('(') >> lit(')')) | goalDesc))
	          >> !( no_case[":effect"] >> ((lit('(') >> lit(')')) | effect));

            conditionSymbol 
                = no_case[":precondition"]; 
//preGD
//	 = prefGD
//	| lit('(') 'and' preGD* lit(')')
//	| lit('(') 'forall' lit('(') typedVariableList lit(')') preGD lit(')')
//	;
//
//prefGD
//	 = lit('(') 'preference' NAME? goalDesc lit(')')
//	| goalDesc
//	;

            goalDesc
	        = atomicTermFormula
	        | lit('(') >> no_case["and"] >> *goalDesc >> lit(')')
	        | lit('(') >> no_case["or"]  >> *goalDesc >> lit(')')
	        | lit('(') >> no_case["not"] >> goalDesc  >> lit(')')
	        | lit('(') >> no_case["imply"] >> goalDesc >> goalDesc >> lit(')')
	        | lit('(') >> no_case["exists"]>> lit('(')   >> typedVariableList >> lit(')') 
                                              >> goalDesc >> lit(')')
	        | lit('(') >> no_case["forall"] >> lit('(') >> typedVariableList  >> lit(')') 
                                              >> goalDesc >> lit(')')
                | fComp;

            fComp
	        = lit('(') >> binaryComp >> fExp >> fExp >> lit(')');

            atomicTermFormula
	        = lit('(') >> predicate >> *term >> lit(')');

            term = identifier | VARIABLE ;

/************* DURATIVE ACTIONS ****************************/

            durativeActionDef
	        = lit('(') >> no_case[":durative-action"] >> actionSymbol
        	         >> no_case[":parameters"] >> lit('(') 
                         >> typedVariableList >> lit(')')
                         >> daDefBody >> lit(')');

            daDefBody
                = no_case[":duration"] >> durationConstraint
	        || no_case[":condition"] >> ((lit('(') >> lit(')')) | daGD)
                || no_case[":effect"] >> ((lit('(') >> lit(')')) | daEffect);

            daGD
	        = prefTimedGD
                | lit('(') >> no_case["and"] >> *daGD >> lit(')')
                | lit('(') >> no_case["forall"] >> lit('(') 
                         >> typedVariableList >> lit(')') >> daGD >> lit(')');

            prefTimedGD
	        = timedGD
                | lit('(') >> no_case["preference"] >> !NAME >> timedGD >> lit(')');

            timedGD
                = lit('(') >> no_case["at"] >> timeSpecifier >> goalDesc >> lit(')')
                | lit('(') >> no_case["over"] >> interval >> goalDesc >> lit(')');

            timeSpecifier = no_case["start"] | no_case["end"] ;
            interval = no_case["all"] ;

/************* DERIVED DEFINITIONS ****************************/

            derivedDef
	        = lit('(') >> no_case[":derived"] >> typedVariableList >> goalDesc >> lit(')');

/************* EXPRESSIONS ****************************/

            fExp
	        = NUMBER
                | lit('(') >> binaryOp >> fExp >> fExp2 >> lit(')')
                | lit('(') >> DASH  >> fExp  >> lit(')') 
                | fHead;

// This is purely a workaround for an ANTLR bug in tree construction
// http://www.antlr.org/wiki/display/ANTLR3/multiple+occurences+of+a+token+mix+up+the+list+management+in+tree+rewrites
            fExp2 = fExp;

            fHead
	        = lit('(') >> functionSymbol >> *term >> lit(')') 
                | functionSymbol; 

            effect
                = lit('(') >> no_case["and"] >> *cEffect >> lit(')') 
                | cEffect;

            cEffect
	        = lit('(') >> no_case["forall"] >> lit('(') 
                         >> typedVariableList >> lit(')') >> effect >> lit(')')
	        | lit('(') >> no_case["when"] >> goalDesc >> condEffect >> lit(')')
                | pEffect;

            pEffect
	        = lit('(') >> assignOp >> fHead >> fExp >> lit(')')
                | lit('(') >> no_case["not"] >> atomicTermFormula >> lit(')')
                | atomicTermFormula;


// TODO: why is this different from the "and cEffect" above? Does it matter?
            condEffect
	        = lit('(') >> no_case["and"] >> *pEffect >> lit(')')
	        | pEffect;

// TODO: should these be uppercase & lexer section?
            binaryOp = lit('*') | lit('+') | lit('-') | lit('/'); 

            binaryComp = lit(">=") | lit("<=") | lit('>') | lit('<') | lit('=');

            assignOp = no_case["assign"] | no_case["scale-up"] | no_case["scale-down"] | no_case["increase"] | no_case["decrease"] | no_case["change"];



/************* DURATIONS  ****************************/

            durationConstraint
	        = lit('(') >> no_case["and"] >> +simpleDurationConstraint >> lit(')')
                | lit('(') >> lit(')')
                | simpleDurationConstraint;

            simpleDurationConstraint
                = lit('(') >> durOp >> no_case["?duration"] >> durValue >> lit(')')
                | lit('(') >> no_case["at"] >> timeSpecifier >> simpleDurationConstraint >> lit(')');

            durOp = lit("<=") | lit(">=") | lit('=');

            durValue = NUMBER | fExp ;

            daEffect
	        = lit('(') >> no_case["and"] >> *daEffect >> lit(')')
        	| timedEffect
	        | lit('(') >> no_case["forall"] >> lit('(') >> typedVariableList 
                         >> lit(')') >> daEffect >> lit(')')
	        | lit('(') >> no_case["when"] >> daGD >> timedEffect >> lit(')')
	        | lit('(') >> assignOp >> fHead >> fExpDA >> lit(')');

            timedEffect
	        = lit('(') >> no_case["at"] >> timeSpecifier >> daEffect >> lit(')')     // BNF has a-effect here, but not defined anywhere
	        | lit('(') >> no_case["at"] >> timeSpecifier >> effect >> lit(')')  // <--- effect added as was unable to parse ":effect (and (at start (not (on-table ?x)))" from IPC2008. 
                | lit('(') >> no_case["at"] >> timeSpecifier >> fAssignDA >> lit(')')
                | lit('(') >> assignOp >> fHead >> fExp >> lit(')')         // BNF has assign-op-t and f-exp-t here, but not defined anywhere
                ;

            fAssignDA
                = lit('(') >> assignOp >> fHead >> fExpDA >> lit(')');

            fExpDA
                    = lit('(') >> ((binaryOp >> fExpDA >> fExpDA) | (lit('-') >> fExpDA)) >> lit(')')
                    | no_case["?duration"]
                    | fExp
                    ;

            skipAtEnd
                =   space
                |   ';' >> (*(char_ - '\n')) >> '\n'      //  pddl comment 
            ;
            //-----------------------------------------------------------------
            //  End grammar definition
            //-----------------------------------------------------------------
        }

        #ifdef BOOST_SPIRIT_DEBUG
        void
        debug()
        {
            BOOST_SPIRIT_DEBUG_NODE(identifier);
            BOOST_SPIRIT_DEBUG_NODE(pddlDoc);
            BOOST_SPIRIT_DEBUG_NODE(domain);
            BOOST_SPIRIT_DEBUG_NODE(domainNameClause);
            BOOST_SPIRIT_DEBUG_NODE(domainName);
            BOOST_SPIRIT_DEBUG_NODE(requirements);
            BOOST_SPIRIT_DEBUG_NODE(requireDef);
            BOOST_SPIRIT_DEBUG_NODE(requireKey);
            BOOST_SPIRIT_DEBUG_NODE(typesDef);
            BOOST_SPIRIT_DEBUG_NODE(typedNameList);
            BOOST_SPIRIT_DEBUG_NODE(singleTypeNameList);
            BOOST_SPIRIT_DEBUG_NODE(problem);
            BOOST_SPIRIT_DEBUG_NODE(constantsDef);
            BOOST_SPIRIT_DEBUG_NODE(predicatesDef);
            BOOST_SPIRIT_DEBUG_NODE(atomicFormulaSkeleton);
            BOOST_SPIRIT_DEBUG_NODE(predicate );
            BOOST_SPIRIT_DEBUG_NODE(typedVariableList);
            BOOST_SPIRIT_DEBUG_NODE(singleTypeVarList);
            BOOST_SPIRIT_DEBUG_NODE(constraints);
            BOOST_SPIRIT_DEBUG_NODE(structureDef);
            BOOST_SPIRIT_DEBUG_NODE(actionDef);
            BOOST_SPIRIT_DEBUG_NODE(actionSymbol );
            BOOST_SPIRIT_DEBUG_NODE(actionDefBody);
            BOOST_SPIRIT_DEBUG_NODE(conditionSymbol);
            BOOST_SPIRIT_DEBUG_NODE(goalDesc);
            BOOST_SPIRIT_DEBUG_NODE(fComp);
            BOOST_SPIRIT_DEBUG_NODE(atomicTermFormula);
            BOOST_SPIRIT_DEBUG_NODE(term);
            BOOST_SPIRIT_DEBUG_NODE(durativeActionDef);
            BOOST_SPIRIT_DEBUG_NODE(daDefBody);
            BOOST_SPIRIT_DEBUG_NODE(daGD);
            BOOST_SPIRIT_DEBUG_NODE(prefTimedGD);
            BOOST_SPIRIT_DEBUG_NODE(timedGD);
            BOOST_SPIRIT_DEBUG_NODE(timeSpecifier);
            BOOST_SPIRIT_DEBUG_NODE(interval);
            BOOST_SPIRIT_DEBUG_NODE(derivedDef);
            BOOST_SPIRIT_DEBUG_NODE(fExp);
            BOOST_SPIRIT_DEBUG_NODE(fExp2);
            BOOST_SPIRIT_DEBUG_NODE(fHead);
            BOOST_SPIRIT_DEBUG_NODE(effect);
            BOOST_SPIRIT_DEBUG_NODE(cEffect);
            BOOST_SPIRIT_DEBUG_NODE(pEffect);
            BOOST_SPIRIT_DEBUG_NODE(condEffect);
            BOOST_SPIRIT_DEBUG_NODE(binaryOp);
            BOOST_SPIRIT_DEBUG_NODE(binaryComp);
            BOOST_SPIRIT_DEBUG_NODE(assignOp);
            BOOST_SPIRIT_DEBUG_NODE(durationConstraint);
            BOOST_SPIRIT_DEBUG_NODE(simpleDurationConstraint);
            BOOST_SPIRIT_DEBUG_NODE(durOp);
            BOOST_SPIRIT_DEBUG_NODE(durValue);
            BOOST_SPIRIT_DEBUG_NODE(daEffect);
            BOOST_SPIRIT_DEBUG_NODE(timedEffect);
            BOOST_SPIRIT_DEBUG_NODE(fAssignDA);
            BOOST_SPIRIT_DEBUG_NODE(fExpDA);
            BOOST_SPIRIT_DEBUG_NODE(conGD);
            BOOST_SPIRIT_DEBUG_NODE(functionsDef);
            BOOST_SPIRIT_DEBUG_NODE(functionList);
            BOOST_SPIRIT_DEBUG_NODE(atomicFunctionSkeleton);
            BOOST_SPIRIT_DEBUG_NODE(functionSymbol);
            BOOST_SPIRIT_DEBUG_NODE(functionType);
            BOOST_SPIRIT_DEBUG_NODE(NAME);
            BOOST_SPIRIT_DEBUG_NODE(VARIABLE);
            BOOST_SPIRIT_DEBUG_NODE(NUMBER);
            BOOST_SPIRIT_DEBUG_NODE(skipAtEnd);
        }
        #endif

        qi::rule<Iterator, unsigned(), pddl_skipper<Iterator> > const&
        start() const { return pddlDoc; }

        qi::symbols<char, unsigned> keywords;

        qi::rule<Iterator, unsigned(), pddl_skipper<Iterator> >
              identifier, pddlDoc, domain, domainNameClause, domainName, 
              requirements, requireDef, requireKey, typesDef, typedNameList, 
              singleTypeNameList, constantsDef, predicatesDef, atomicFormulaSkeleton, 
              predicate, typedVariableList, singleTypeVarList, constraints, structureDef, 
              actionDef, actionSymbol, actionDefBody, goalDesc, fComp, atomicTermFormula, 
              term, durativeActionDef, daDefBody, daGD, prefTimedGD, timedGD, timeSpecifier, 
              interval, derivedDef, fExp, fExp2, fHead, effect, cEffect, pEffect, binaryOp, 
              binaryComp, assignOp, durationConstraint, simpleDurationConstraint, durOp, 
              durValue, daEffect, timedEffect, fAssignDA, fExpDA, conGD, condEffect,
              functionsDef, functionList, atomicFunctionSkeleton, functionSymbol, 
              functionType, NAME, VARIABLE, NUMBER, conditionSymbol,
              problem, skipAtEnd; 
};

///////////////////////////////////////////////////////////////////////////////
//
//  Parse a file
//
///////////////////////////////////////////////////////////////////////////////
static void
parse(char const* filename)
{
    ifstream in(filename);

    if (!in)
    {
        cerr << "Could not open input file: " << filename << endl;
        return;
    }

    in.unsetf(ios::skipws); //  Turn of white space skipping on the stream

    string vec;
    std::copy(
        istream_iterator<char>(in),
        istream_iterator<char>(),
        std::back_inserter(vec));

    string::const_iterator iter = vec.begin();
    string::const_iterator last = vec.end();

    pddl_skipper<std::string::const_iterator> skip;
    pddl_grammar<std::string::const_iterator> p;

#ifdef BOOST_SPIRIT_DEBUG
    //BOOST_SPIRIT_DEBUG_NODE(skip_p);
    //BOOST_SPIRIT_DEBUG_NODE(p);
#endif

    //parse_info<vector<char>::const_iterator> info =
    unsigned result;
    bool r = qi::phrase_parse(iter, last, p, skip, result);
       // qi::parse(first, last, p, skip_p);

    if (r && iter == last)
    {
        cout << "\t\t" << filename << " Parses OK\n\n\n";
    }
    else
    {
        cerr << "---PARSING FAILURE---\n";
        cerr << string(iter, last);
    }
}

///////////////////////////////////////////////////////////////////////////////
//
//  Main program
//
///////////////////////////////////////////////////////////////////////////////
int
main(int argc, char* argv[])
{
    cout << "/////////////////////////////////////////////////////////\n\n";
    cout << "\t\tPDDL Grammar For Spirit...\n\n";
    cout << "/////////////////////////////////////////////////////////\n\n";

    if (argc > 1)
    {
        for (int i = 1; i < argc; ++i)
        {
            cout << argv[i] << endl;
            parse(argv[i]);
        }
    }
    else
    {
        cerr << "---NO FILENAME GIVEN---" << endl;
    }

    return 0;
}


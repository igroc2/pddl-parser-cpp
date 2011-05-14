#ifndef PDDL_DOMAIN_GRAMMAR_H
#define PDDL_DOMAIN_GRAMMAR_H

/// PDDL Parser Grammar for Spirit. 
///
/// Adapted from "Antlr grammar for PDDL 3.0" 
/// Zeyn Saigol (http://www.antlr.org/grammar/1222962012944/Pddl.g)
///
/// Notes on ANTLR grammar
/// ---------------------
/// ! means throw away that part while building the token's string value. 
/// ^ means the current node should become the root for the AST.

#include "DomainParser.h"

#define BOOST_SPIRIT_DEBUG  ///$$$ DEFINE THIS WHEN DEBUGGING $$$///
#include <boost/spirit/include/classic_core.hpp>
#include <boost/spirit/include/classic_grammar.hpp>
#include <boost/spirit/include/classic_symbols.hpp>

#include <boost/spirit/include/classic_assign_actor.hpp>

#include <fstream>
#include <iostream>
#include <vector>


///////////////////////////////////////////////////////////////////////////////
using namespace boost::spirit::classic;

struct pddl_grammar : public grammar<pddl_grammar>
{
    pddl_grammar() {}

    template <typename ScannerT>
    struct definition
    {
        definition(pddl_grammar const& /*self*/)
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
            chlit<>     LPAREN('(');
            chlit<>     RPAREN(')');
            chlit<>     DASH('-');

            //-----------------------------------------------------------------
            // TOKENS
            //-----------------------------------------------------------------
            typedef inhibit_case<strlit<> > token_t;

            token_t DEFINE         = as_lower_d["define"];
            /// If the _ is removed from DOMAIN_, using gcc 4.4.1, 
            /// I get compilation error: "error: expected unqualified-id before numeric constant"
            token_t DOMAIN_        = as_lower_d["domain"];  
            token_t REQUIREMENTS   = as_lower_d[":requirements"];  

            //-----------------------------------------------------------------
            //  Start grammar definition
            //-----------------------------------------------------------------
            identifier
                = as_lower_d[
                    lexeme_d[
                        (alpha_p >> *(alnum_p | '-' | '_'))
                        - (keywords >> (anychar_p - (alnum_p | '-' | '_')))
                    ]
                ];

            string_literal
                = lexeme_d[ chlit<>('\'') >>
                   +( strlit<>("\'\'") | (anychar_p-chlit<>('\''))) >>
                   chlit<>('\'') ];

            pddlDoc
                =   domainR; 
		  //| problem;

            domainR
                =   LPAREN >> DEFINE >> domainNameClause
                        >> !requireDef  
                        >> !typesDef   
                        >> !constantsDef 
                        >> !predicatesDef
                        >> !functionsDef
                        >> !constraints
                        >>  *structureDef 
                    >> RPAREN >> lexeme_d[*skipAtEnd]; 
                    //>> RPAREN; <--- does not work due to "trailing whitespace" bug: http://article.gmane.org/gmane.comp.parsers.spirit.general/4029

            domainNameClause
                =  LPAREN >> DOMAIN_ >> domainName 
                          >> RPAREN;

            domainName 
                = identifier[assign_a(domain.domainName)];

            requireDef 
                = LPAREN >> REQUIREMENTS >> +requireKey 
                         >> RPAREN;

            requireKey
                = as_lower_d[":strips"]
                    | as_lower_d[":typing"]
                    | as_lower_d[":negative-preconditions"]
                    | as_lower_d[":disjunctive-preconditions"]
                    | as_lower_d[":equality"]
                    | as_lower_d[":existential-preconditions"]
                    | as_lower_d[":universal-preconditions"]
                    | as_lower_d[":quantified-preconditions"]
                    | as_lower_d[":conditional-effects"]
                    | as_lower_d[":fluents"]
                    | as_lower_d[":adl"]
                    | as_lower_d[":durative-actions"]
                    | as_lower_d[":derived-predicates"]
                    | as_lower_d[":timed-initial-literals"]
                    | as_lower_d[":preferences"]
                    | as_lower_d[":constraints"]
                    | as_lower_d[":action-costs"]
                    | as_lower_d[":goal-utilities"]
                    | as_lower_d[":object-fluents"]
                    ;

            typesDef
                 =  LPAREN >> as_lower_d[":types"] 
                           >> typedNameList[&insertTypeNameList] >> RPAREN;

            // If have any typed names, they must come FIRST!
            typedNameList
                 =  (+singleTypeNameList >> *identifier | *identifier);
                 //=  (*identifier | +singleTypeNameList >> *identifier); <-- didn't work for "(:constants no-block - block)"

            singleTypeNameList
                 = +identifier[&insertTypeIntoCurrentTypeSet] >> DASH >> identifier[&insertTypeInheritance];

            functionsDef
                 = LPAREN >> as_lower_d[":functions"] >> functionList >> RPAREN;

            functionList
                 = *(+atomicFunctionSkeleton >> !(DASH >> functionType[&insertFunctionTypeIntoCurrentFunction]));

            atomicFunctionSkeleton
	         = LPAREN >> functionSymbol[&insertNewFunction] >> typedVariableList[&insertTypedVariableListIntoCurrentFunction]  >> RPAREN;

            functionSymbol  = NAME ;
        
            NAME = identifier;

            VARIABLE  = chlit<>('?') >> identifier;

            NUMBER  = +digit_p >> !(chlit<>('.') >> +digit_p);

            functionType  = identifier;

            constantsDef
	         = LPAREN >> as_lower_d[":constants"] >> typedNameList 
                          >> RPAREN;

            predicatesDef
	         = LPAREN >> as_lower_d[":predicates"] >> +atomicFormulaSkeleton
                          >> RPAREN;

            atomicFormulaSkeleton
	         = LPAREN >> predicate[&insertNewPredicate] >> typedVariableList[&insertTypedVariableListIntoCurrentPredicate] >> RPAREN;

            predicate 
                = identifier;

            // If have any typed variables, they must come FIRST!
            typedVariableList
                = (+singleTypeVarList >> *VARIABLE | *VARIABLE);
                // = (*VARIABLE | +singleTypeVarList >> *VARIABLE); <--- didn't work for (:predicates (on-table ?x - block))

            singleTypeVarList
                = (+VARIABLE[&insertVariableIntoCurrentSingleTypeVarList] >> DASH >> identifier[&insertSingleTypedVariableListIntoCurrentTypedVariableList]);

            constraints
	        = LPAREN >> as_lower_d[":constraints"] >> conGD >> RPAREN;

/************* CONSTRAINTS ****************************/

            conGD
               = LPAREN >> as_lower_d["and"] >> *conGD >> RPAREN
                    | LPAREN >> as_lower_d["forall"] >> LPAREN >> typedVariableList >> RPAREN >> conGD >> RPAREN
                    | LPAREN >> as_lower_d["at"] >> as_lower_d["end"] >> goalDesc >> RPAREN
                    | LPAREN >> as_lower_d["always"] >> goalDesc >> RPAREN
                    | LPAREN >> as_lower_d["sometime"] >> goalDesc >> RPAREN
                    | LPAREN >> as_lower_d["within"] >> NUMBER >> goalDesc >> RPAREN
                    | LPAREN >> as_lower_d["at-most-once"] >> goalDesc >> RPAREN
                    | LPAREN >> as_lower_d["sometime-after"] >> goalDesc >> goalDesc >> RPAREN
                    | LPAREN >> as_lower_d["sometime-before"] >> goalDesc >> goalDesc >> RPAREN
                    | LPAREN >> as_lower_d["always-within"] >> NUMBER >> goalDesc >> goalDesc >> RPAREN
                    | LPAREN >> as_lower_d["hold-during"] >> NUMBER >> NUMBER >> goalDesc >> RPAREN
                    | LPAREN >> as_lower_d["hold-after"] >> NUMBER >> goalDesc >> RPAREN
                    ;



            structureDef
                = actionDef
                    | durativeActionDef
                    | derivedDef
                    ;

/************* ACTIONS ****************************/

            actionDef
	        = LPAREN >> as_lower_d[":action"] >> actionSymbol
	                 >> as_lower_d[":parameters"] 
                         >> LPAREN >> typedVariableList >> RPAREN
                         >> actionDefBody >> RPAREN;

            actionSymbol 
                = identifier;

// Should allow preGD instead of goalDesc for preconditions -
// but I can't get the LL(*) parsing to work
// This means 'preference' preconditions cannot be used
            actionDefBody
	        = !( conditionSymbol >> ((LPAREN >> RPAREN) | goalDesc))
	          >> !( as_lower_d[":effect"] >> ((LPAREN >> RPAREN) | effect));

            conditionSymbol 
                = as_lower_d[":precondition"]; 
//preGD
//	 = prefGD
//	| LPAREN 'and' preGD* RPAREN
//	| LPAREN 'forall' LPAREN typedVariableList RPAREN preGD RPAREN
//	;
//
//prefGD
//	 = LPAREN 'preference' NAME? goalDesc RPAREN
//	| goalDesc
//	;

            goalDesc
	        = atomicTermFormula
	        | LPAREN >> as_lower_d["and"] >> *goalDesc >> RPAREN
	        | LPAREN >> as_lower_d["or"]  >> *goalDesc >> RPAREN
	        | LPAREN >> as_lower_d["not"] >> goalDesc  >> RPAREN
	        | LPAREN >> as_lower_d["imply"] >> goalDesc >> goalDesc >> RPAREN
	        | LPAREN >> as_lower_d["exists"]>> LPAREN   >> typedVariableList >> RPAREN 
                                              >> goalDesc >> RPAREN
	        | LPAREN >> as_lower_d["forall"] >> LPAREN >> typedVariableList  >> RPAREN 
                                              >> goalDesc >> RPAREN
                | fComp;

            fComp
	        = LPAREN >> binaryComp >> fExp >> fExp >> RPAREN;

            atomicTermFormula
	        = LPAREN >> predicate >> *term >> RPAREN;

            term = identifier | VARIABLE ;

/************* DURATIVE ACTIONS ****************************/

            durativeActionDef
	        = LPAREN >> as_lower_d[":durative-action"] >> actionSymbol[&insertNewDurativeAction]
        	         >> as_lower_d[":parameters"] >> LPAREN 
                         >> typedVariableList[&insertParametersIntoCurrentDurativeAction] >> RPAREN
                         >> daDefBody >> RPAREN;

            daDefBody
                = as_lower_d[":duration"] >> durationConstraint[&insertDurationConstraintIntoCurrentDurativeAction]
	        || as_lower_d[":condition"] >> ((LPAREN >> RPAREN) | daGD)
                || as_lower_d[":effect"] >> ((LPAREN >> RPAREN) | daEffect);

            daGD
	        = prefTimedGD
                | LPAREN >> as_lower_d["and"] >> *daGD >> RPAREN
                | LPAREN >> as_lower_d["forall"] >> LPAREN 
                         >> typedVariableList >> RPAREN >> daGD >> RPAREN;

            prefTimedGD
	        = timedGD
                | LPAREN >> as_lower_d["preference"] >> !NAME >> timedGD >> RPAREN;

            timedGD
                = LPAREN >> as_lower_d["at"] >> timeSpecifier >> goalDesc >> RPAREN
                | LPAREN >> as_lower_d["over"] >> interval >> goalDesc >> RPAREN;

            timeSpecifier = (as_lower_d["start"] | as_lower_d["end"])[&insertCurrentTimeSpecifier];
            interval = as_lower_d["all"] ;

/************* DERIVED DEFINITIONS ****************************/

            derivedDef
	        = LPAREN >> as_lower_d[":derived"] >> typedVariableList >> goalDesc >> RPAREN;

/************* EXPRESSIONS ****************************/

            fExp
	        = NUMBER
                | LPAREN >> binaryOp >> fExp >> fExp2 >> RPAREN
                | LPAREN >> DASH  >> fExp  >> RPAREN 
                | fHead;

// This is purely a workaround for an ANTLR bug in tree construction
// http://www.antlr.org/wiki/display/ANTLR3/multiple+occurences+of+a+token+mix+up+the+list+management+in+tree+rewrites
            fExp2 = fExp;

            fHead
	        = LPAREN >> functionSymbol >> *term >> RPAREN 
                | functionSymbol; 

            effect
                = LPAREN >> as_lower_d["and"] >> *cEffect >> RPAREN 
                | cEffect;

            cEffect
	        = LPAREN >> as_lower_d["forall"] >> LPAREN 
                         >> typedVariableList >> RPAREN >> effect >> RPAREN
	        | LPAREN >> as_lower_d["when"] >> goalDesc >> condEffect >> RPAREN
                | pEffect;

            pEffect
	        = LPAREN >> assignOp >> fHead >> fExp >> RPAREN
                | LPAREN >> as_lower_d["not"] >> atomicTermFormula >> RPAREN
                | atomicTermFormula;


// TODO: why is this different from the "and cEffect" above? Does it matter?
            condEffect
	        = LPAREN >> as_lower_d["and"] >> *pEffect >> RPAREN
	        | pEffect;

// TODO: should these be uppercase & lexer section?
            binaryOp = chlit<>('*') | chlit<>('+') | chlit<>('-') | chlit<>('/'); 

            binaryComp = strlit<>(">=") | strlit<>("<=") | chlit<>('>') | chlit<>('<') | chlit<>('=');

            assignOp = as_lower_d["assign"] | as_lower_d["scale-up"] | as_lower_d["scale-down"] | as_lower_d["increase"] | as_lower_d["decrease"] | as_lower_d["change"];



/************* DURATIONS  ****************************/

            durationConstraint
	        = LPAREN >> as_lower_d["and"] >> +(simpleDurationConstraint[&insertCurrentSimpleDurationConstraint]) >> RPAREN
                | LPAREN >> RPAREN
                | simpleDurationConstraint;

            simpleDurationConstraint
                = LPAREN >> durOp >> as_lower_d["?duration"] >> durValue >> RPAREN
                | LPAREN >> as_lower_d["at"] >> timeSpecifier[&insertCurrentTimeSpecifier] >> simpleDurationConstraint >> RPAREN;

            durOp = strlit<>("<=") | strlit<>(">=") | chlit<>('=');

            durValue = NUMBER[&insertCurrentDurationValueNumber] | fExp[&insertCurrentDurationValueFExp];

            daEffect
	        = LPAREN >> as_lower_d["and"] >> *daEffect >> RPAREN
        	| timedEffect
	        | LPAREN >> as_lower_d["forall"] >> LPAREN >> typedVariableList 
                         >> RPAREN >> daEffect >> RPAREN
	        | LPAREN >> as_lower_d["when"] >> daGD >> timedEffect >> RPAREN
	        | LPAREN >> assignOp >> fHead >> fExpDA >> RPAREN;

            timedEffect
	        = LPAREN >> as_lower_d["at"] >> timeSpecifier >> daEffect >> RPAREN     // BNF has a-effect here, but not defined anywhere
	        | LPAREN >> as_lower_d["at"] >> timeSpecifier >> effect >> RPAREN  // <--- effect added as was unable to parse ":effect (and (at start (not (on-table ?x)))" from IPC2008. 
                | LPAREN >> as_lower_d["at"] >> timeSpecifier >> fAssignDA >> RPAREN
                | LPAREN >> assignOp >> fHead >> fExp >> RPAREN         // BNF has assign-op-t and f-exp-t here, but not defined anywhere
                ;

            fAssignDA
                = LPAREN >> assignOp >> fHead >> fExpDA >> RPAREN;

            fExpDA
                    = LPAREN >> ((binaryOp >> fExpDA >> fExpDA) | (chlit<>('-') >> fExpDA)) >> RPAREN
                    | as_lower_d["?duration"]
                    | fExp
                    ;

            skipAtEnd
                =   space_p
                |   ';' >> (*(anychar_p - '\n')) >> '\n'      //  pddl comment 
            ;
            //-----------------------------------------------------------------
            //  End grammar definition
            //-----------------------------------------------------------------
        }

        #ifdef BOOST_SPIRIT_DEBUG
        void
        debug()
        {
            BOOST_SPIRIT_DEBUG_RULE(identifier);
            BOOST_SPIRIT_DEBUG_RULE(string_literal);
            BOOST_SPIRIT_DEBUG_RULE(pddlDoc);
            BOOST_SPIRIT_DEBUG_RULE(domainR);
            BOOST_SPIRIT_DEBUG_RULE(domainNameClause);
            BOOST_SPIRIT_DEBUG_RULE(domainName);
            BOOST_SPIRIT_DEBUG_RULE(requirements);
            BOOST_SPIRIT_DEBUG_RULE(requireDef);
            BOOST_SPIRIT_DEBUG_RULE(requireKey);
            BOOST_SPIRIT_DEBUG_RULE(typesDef);
            BOOST_SPIRIT_DEBUG_RULE(typedNameList);
            BOOST_SPIRIT_DEBUG_RULE(singleTypeNameList);
            BOOST_SPIRIT_DEBUG_RULE(problem);
            BOOST_SPIRIT_DEBUG_RULE(constantsDef);
            BOOST_SPIRIT_DEBUG_RULE(predicatesDef);
            BOOST_SPIRIT_DEBUG_RULE(atomicFormulaSkeleton);
            BOOST_SPIRIT_DEBUG_RULE(predicate );
            BOOST_SPIRIT_DEBUG_RULE(typedVariableList);
            BOOST_SPIRIT_DEBUG_RULE(singleTypeVarList);
            BOOST_SPIRIT_DEBUG_RULE(constraints);
            BOOST_SPIRIT_DEBUG_RULE(structureDef);
            BOOST_SPIRIT_DEBUG_RULE(actionDef);
            BOOST_SPIRIT_DEBUG_RULE(actionSymbol );
            BOOST_SPIRIT_DEBUG_RULE(actionDefBody);
            BOOST_SPIRIT_DEBUG_RULE(conditionSymbol);
            BOOST_SPIRIT_DEBUG_RULE(goalDesc);
            BOOST_SPIRIT_DEBUG_RULE(fComp);
            BOOST_SPIRIT_DEBUG_RULE(atomicTermFormula);
            BOOST_SPIRIT_DEBUG_RULE(term);
            BOOST_SPIRIT_DEBUG_RULE(durativeActionDef);
            BOOST_SPIRIT_DEBUG_RULE(daDefBody);
            BOOST_SPIRIT_DEBUG_RULE(daGD);
            BOOST_SPIRIT_DEBUG_RULE(prefTimedGD);
            BOOST_SPIRIT_DEBUG_RULE(timedGD);
            BOOST_SPIRIT_DEBUG_RULE(timeSpecifier);
            BOOST_SPIRIT_DEBUG_RULE(interval);
            BOOST_SPIRIT_DEBUG_RULE(derivedDef);
            BOOST_SPIRIT_DEBUG_RULE(fExp);
            BOOST_SPIRIT_DEBUG_RULE(fExp2);
            BOOST_SPIRIT_DEBUG_RULE(fHead);
            BOOST_SPIRIT_DEBUG_RULE(effect);
            BOOST_SPIRIT_DEBUG_RULE(cEffect);
            BOOST_SPIRIT_DEBUG_RULE(pEffect);
            BOOST_SPIRIT_DEBUG_RULE(condEffect);
            BOOST_SPIRIT_DEBUG_RULE(binaryOp);
            BOOST_SPIRIT_DEBUG_RULE(binaryComp);
            BOOST_SPIRIT_DEBUG_RULE(assignOp);
            BOOST_SPIRIT_DEBUG_RULE(durationConstraint);
            BOOST_SPIRIT_DEBUG_RULE(simpleDurationConstraint);
            BOOST_SPIRIT_DEBUG_RULE(durOp);
            BOOST_SPIRIT_DEBUG_RULE(durValue);
            BOOST_SPIRIT_DEBUG_RULE(daEffect);
            BOOST_SPIRIT_DEBUG_RULE(timedEffect);
            BOOST_SPIRIT_DEBUG_RULE(fAssignDA);
            BOOST_SPIRIT_DEBUG_RULE(fExpDA);
            BOOST_SPIRIT_DEBUG_RULE(conGD);
            BOOST_SPIRIT_DEBUG_RULE(functionsDef);
            BOOST_SPIRIT_DEBUG_RULE(functionList);
            BOOST_SPIRIT_DEBUG_RULE(atomicFunctionSkeleton);
            BOOST_SPIRIT_DEBUG_RULE(functionSymbol);
            BOOST_SPIRIT_DEBUG_RULE(functionType);
            BOOST_SPIRIT_DEBUG_RULE(NAME);
            BOOST_SPIRIT_DEBUG_RULE(VARIABLE);
            BOOST_SPIRIT_DEBUG_RULE(NUMBER);
            BOOST_SPIRIT_DEBUG_RULE(skipAtEnd);
        }
        #endif

        rule<ScannerT> const&
        start() const { return pddlDoc; }

        symbols<> keywords;
        rule<ScannerT>
              string_literal, identifier, pddlDoc, domainR, domainNameClause, domainName, 
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
};

std::auto_ptr<pddl_grammar> create_pddl_grammar();

#endif

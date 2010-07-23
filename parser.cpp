/// PDDL Parser Grammar for Spirit. 
///
/// Adapted from "Antlr grammar for PDDL 3.0" 
/// Zeyn Saigol (http://www.antlr.org/grammar/1222962012944/Pddl.g)

#define BOOST_SPIRIT_DEBUG  ///$$$ DEFINE THIS WHEN DEBUGGING $$$///
#include <boost/spirit/include/classic_core.hpp>
#include <boost/spirit/include/classic_grammar.hpp>
#include <boost/spirit/include/classic_symbols.hpp>

#include <fstream>
#include <iostream>
#include <vector>

///////////////////////////////////////////////////////////////////////////////
using namespace std;
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
            // OPERATORS
            //-----------------------------------------------------------------
//            chlit<>     PLUS('+');
//            chlit<>     MINUS('-');
//            chlit<>     STAR('*');
//            chlit<>     SLASH('/');
//            strlit<>    ASSIGN(":=");
//            chlit<>     COMMA(',');
//            chlit<>     SEMI(';');
//            chlit<>     COLON(':');
//            chlit<>     EQUAL('=');
//            strlit<>    NOT_EQUAL("<>");
//            chlit<>     LT('<');
//            strlit<>    LE("<=");
//            strlit<>    GE(">=");
//            chlit<>     GT('>');
            chlit<>     LPAREN('(');
            chlit<>     RPAREN(')');
//            chlit<>     LBRACK('[');
//            chlit<>     RBRACK(']');
//            chlit<>     POINTER('^');
//            chlit<>     DOT('.');
//            strlit<>    DOTDOT("..");

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
                        - (keywords >> anychar_p - (alnum_p | '-' | '_'))
                    ]
                ];

            string_literal
                = lexeme_d[ chlit<>('\'') >>
                   +( strlit<>("\'\'") | anychar_p-chlit<>('\'') ) >>
                   chlit<>('\'') ];

            pddlDoc
                =   domain; //| problem;

            domain
                =   LPAREN >> DEFINE >> domainNameClause
                        >> !requireDef  
                        >> !typesDef     ;
//                      >> !constantDef  
//                      >> !predicatesDef
//                      >> !functionsDef 
//                        -constraints   >>
//                        *structureDef  >>    
//                    RPAREN;

            domainNameClause
                =  LPAREN >> DOMAIN_ >> domainName 
                          >> RPAREN;

            domainName 
                = identifier;

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
                           >> typedNameList >> RPAREN;

            typedNameList
                 =  (*identifier | +singleTypeNameList >> *identifier);

            singleTypeNameList
                 = (+identifier >> '-' >> identifier);

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
            BOOST_SPIRIT_DEBUG_RULE(domain);
            BOOST_SPIRIT_DEBUG_RULE(domainNameClause);
            BOOST_SPIRIT_DEBUG_RULE(domainName);
            BOOST_SPIRIT_DEBUG_RULE(requirements);
            BOOST_SPIRIT_DEBUG_RULE(requireDef);
            BOOST_SPIRIT_DEBUG_RULE(requireKey);
            BOOST_SPIRIT_DEBUG_RULE(typesDef);
            BOOST_SPIRIT_DEBUG_RULE(typedNameList);
            BOOST_SPIRIT_DEBUG_RULE(singleTypeNameList);
            BOOST_SPIRIT_DEBUG_RULE(problem);
//            BOOST_SPIRIT_DEBUG_RULE(program);
//            BOOST_SPIRIT_DEBUG_RULE(programHeading);
//            BOOST_SPIRIT_DEBUG_RULE(fileIdentifier);
//            BOOST_SPIRIT_DEBUG_RULE(block);
//            BOOST_SPIRIT_DEBUG_RULE(labelDeclarationPart);
//            BOOST_SPIRIT_DEBUG_RULE(label);
//            BOOST_SPIRIT_DEBUG_RULE(constantDefinitionPart);
//            BOOST_SPIRIT_DEBUG_RULE(constantDefinition);
//            BOOST_SPIRIT_DEBUG_RULE(constant);
//            BOOST_SPIRIT_DEBUG_RULE(unsignedNumber);
//            BOOST_SPIRIT_DEBUG_RULE(unsignedInteger);
//            BOOST_SPIRIT_DEBUG_RULE(unsignedReal);
//            BOOST_SPIRIT_DEBUG_RULE(sign);
//            BOOST_SPIRIT_DEBUG_RULE(constantIdentifier);
//            BOOST_SPIRIT_DEBUG_RULE(typeDefinitionPart);
//            BOOST_SPIRIT_DEBUG_RULE(typeDefinition);
//            BOOST_SPIRIT_DEBUG_RULE(type);
//            BOOST_SPIRIT_DEBUG_RULE(simpleType);
//            BOOST_SPIRIT_DEBUG_RULE(scalarType);
//            BOOST_SPIRIT_DEBUG_RULE(subrangeType);
//            BOOST_SPIRIT_DEBUG_RULE(typeIdentifier);
//            BOOST_SPIRIT_DEBUG_RULE(structuredType);
//            BOOST_SPIRIT_DEBUG_RULE(unpackedStructuredType);
//            BOOST_SPIRIT_DEBUG_RULE(arrayType);
//            BOOST_SPIRIT_DEBUG_RULE(indexType);
//            BOOST_SPIRIT_DEBUG_RULE(componentType);
//            BOOST_SPIRIT_DEBUG_RULE(recordType);
//            BOOST_SPIRIT_DEBUG_RULE(fieldList);
//            BOOST_SPIRIT_DEBUG_RULE(fixedPart);
//            BOOST_SPIRIT_DEBUG_RULE(recordSection);
//            BOOST_SPIRIT_DEBUG_RULE(variantPart);
//            BOOST_SPIRIT_DEBUG_RULE(tagField);
//            BOOST_SPIRIT_DEBUG_RULE(variant);
//            BOOST_SPIRIT_DEBUG_RULE(caseLabelList);
//            BOOST_SPIRIT_DEBUG_RULE(caseLabel);
//            BOOST_SPIRIT_DEBUG_RULE(setType);
//            BOOST_SPIRIT_DEBUG_RULE(baseType);
//            BOOST_SPIRIT_DEBUG_RULE(fileType);
//            BOOST_SPIRIT_DEBUG_RULE(pointerType);
//            BOOST_SPIRIT_DEBUG_RULE(variableDeclarationPart);
//            BOOST_SPIRIT_DEBUG_RULE(variableDeclaration);
//            BOOST_SPIRIT_DEBUG_RULE(procedureAndFunctionDeclarationPart);
//            BOOST_SPIRIT_DEBUG_RULE(procedureOrFunctionDeclaration);
//            BOOST_SPIRIT_DEBUG_RULE(procedureDeclaration);
//            BOOST_SPIRIT_DEBUG_RULE(procedureHeading);
//            BOOST_SPIRIT_DEBUG_RULE(parameterList);
//            BOOST_SPIRIT_DEBUG_RULE(formalParameterSection);
//            BOOST_SPIRIT_DEBUG_RULE(parameterGroup);
//            BOOST_SPIRIT_DEBUG_RULE(functionDeclaration);
//            BOOST_SPIRIT_DEBUG_RULE(functionHeading);
//            BOOST_SPIRIT_DEBUG_RULE(resultType);
//            BOOST_SPIRIT_DEBUG_RULE(statementPart);
//            BOOST_SPIRIT_DEBUG_RULE(statement);
//            BOOST_SPIRIT_DEBUG_RULE(unlabelledStatement);
//            BOOST_SPIRIT_DEBUG_RULE(simpleStatement);
//            BOOST_SPIRIT_DEBUG_RULE(assignmentStatement);
//            BOOST_SPIRIT_DEBUG_RULE(variable);
//            BOOST_SPIRIT_DEBUG_RULE(entireVariable);
//            BOOST_SPIRIT_DEBUG_RULE(variableIdentifier);
//            BOOST_SPIRIT_DEBUG_RULE(componentVariable);
//            BOOST_SPIRIT_DEBUG_RULE(indexedVariable);
//            BOOST_SPIRIT_DEBUG_RULE(arrayVariable);
//            BOOST_SPIRIT_DEBUG_RULE(fieldDesignator);
//            BOOST_SPIRIT_DEBUG_RULE(recordVariable);
//            BOOST_SPIRIT_DEBUG_RULE(fieldIdentifier);
//            BOOST_SPIRIT_DEBUG_RULE(fileBuffer);
//            BOOST_SPIRIT_DEBUG_RULE(fileVariable);
//            BOOST_SPIRIT_DEBUG_RULE(referencedVariable);
//            BOOST_SPIRIT_DEBUG_RULE(pointerVariable);
//            BOOST_SPIRIT_DEBUG_RULE(expression);
//            BOOST_SPIRIT_DEBUG_RULE(relationalOperator);
//            BOOST_SPIRIT_DEBUG_RULE(simpleExpression);
//            BOOST_SPIRIT_DEBUG_RULE(addingOperator);
//            BOOST_SPIRIT_DEBUG_RULE(term);
//            BOOST_SPIRIT_DEBUG_RULE(multiplyingOperator);
//            BOOST_SPIRIT_DEBUG_RULE(factor);
//            BOOST_SPIRIT_DEBUG_RULE(unsignedConstant);
//            BOOST_SPIRIT_DEBUG_RULE(functionDesignator);
//            BOOST_SPIRIT_DEBUG_RULE(functionIdentifier);
//            BOOST_SPIRIT_DEBUG_RULE(set);
//            BOOST_SPIRIT_DEBUG_RULE(elementList);
//            BOOST_SPIRIT_DEBUG_RULE(element);
//            BOOST_SPIRIT_DEBUG_RULE(procedureStatement);
//            BOOST_SPIRIT_DEBUG_RULE(procedureIdentifier);
//            BOOST_SPIRIT_DEBUG_RULE(actualParameter);
//            BOOST_SPIRIT_DEBUG_RULE(gotoStatement);
//            BOOST_SPIRIT_DEBUG_RULE(emptyStatement);
//            BOOST_SPIRIT_DEBUG_RULE(empty);
//            BOOST_SPIRIT_DEBUG_RULE(structuredStatement);
//            BOOST_SPIRIT_DEBUG_RULE(compoundStatement);
//            BOOST_SPIRIT_DEBUG_RULE(conditionalStatement);
//            BOOST_SPIRIT_DEBUG_RULE(ifStatement);
//            BOOST_SPIRIT_DEBUG_RULE(caseStatement);
//            BOOST_SPIRIT_DEBUG_RULE(caseListElement);
//            BOOST_SPIRIT_DEBUG_RULE(repetetiveStatement);
//            BOOST_SPIRIT_DEBUG_RULE(whileStatement);
//            BOOST_SPIRIT_DEBUG_RULE(repeatStatement);
//            BOOST_SPIRIT_DEBUG_RULE(forStatement);
//            BOOST_SPIRIT_DEBUG_RULE(forList);
//            BOOST_SPIRIT_DEBUG_RULE(controlVariable);
//            BOOST_SPIRIT_DEBUG_RULE(initialValue);
//            BOOST_SPIRIT_DEBUG_RULE(finalValue);
//            BOOST_SPIRIT_DEBUG_RULE(withStatement);
//            BOOST_SPIRIT_DEBUG_RULE(recordVariableList);
        }
        #endif

        rule<ScannerT> const&
        start() const { return pddlDoc; }

        symbols<> keywords;
        rule<ScannerT>
              string_literal, identifier, pddlDoc, domain, domainNameClause, domainName, 
              requirements, requireDef, requireKey, typesDef, typedNameList, 
              singleTypeNameList, problem;
    };
};

///////////////////////////////////////////////////////////////////////////////
//
//  The Pascal White Space Skipper
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

    vector<char> vec;
    std::copy(
        istream_iterator<char>(in),
        istream_iterator<char>(),
        std::back_inserter(vec));

    vector<char>::const_iterator first = vec.begin();
    vector<char>::const_iterator last = vec.end();

    pddl_skipper skip_p;
    pddl_grammar p;

#ifdef BOOST_SPIRIT_DEBUG
    BOOST_SPIRIT_DEBUG_NODE(skip_p);
    BOOST_SPIRIT_DEBUG_NODE(p);
#endif

    parse_info<vector<char>::const_iterator> info =
        parse(first, last, p, skip_p);

    if (info.full)
    {
        cout << "\t\t" << filename << " Parses OK\n\n\n";
    }
    else
    {
        cerr << "---PARSING FAILURE---\n";
        cerr << string(info.stop, last);
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
    cout << "\t\tPascal Grammar For Spirit...\n\n";
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


#ifndef DOMAIN_PARSER_H
#define DOMAIN_PARSER_H

#include <string>
#include <vector>
#include <map>
#include <memory>
#include <set>

typedef std::string Type;
typedef std::multimap<Type, Type> TypeInheritance; //< multimap with (InheritsFrom -> Inherited) 

struct TypedVariable {
        std::string name;
        Type type;
};

struct Function {
        std::string functionSymbol;
        std::vector<TypedVariable> typedVariableList;
        std::string functionType; //< optional field; is empty if not provided in the domain
};

struct Constant {
        std::string name;
        Type type; 
};

struct Predicate {
        std::string name;
        typedef std::vector<TypedVariable> TypedVariableList;
        TypedVariableList typedVariableList;
};

struct DurationConstraint {
};

struct DurativeCondition {
};

struct DurativeEffect {
};

struct DurativeAction {
    std::string name;
    std::vector<TypedVariable> parameters;
    DurationConstraint durationConstraint;
    DurativeCondition  durativeCondition;     
    DurativeEffect     durativeEffect;     
};

struct NondurativeAction {
};

struct Domain {
    std::string domainName;
    std::set<std::string> requirements;   
    /* types */
	typedef std::set<std::string> TypeSet;
	TypeSet types;   
    TypeInheritance typeInheritance;
    /* functions */
    typedef std::vector<Function*> Functions;
    Functions functions;
    /* constants */
    typedef std::vector<Constant*> Constants;
    Constants constants;
    /* predicates */
    typedef std::vector<Predicate*> Predicates;
    Predicates predicates;
    /* durative actions */
    typedef std::vector<DurativeAction*> DurativeActions;
    DurativeActions durativeActions;
	
    ~Domain();

	std::string toString() const;
};

class DomainParser {
        public:
        std::auto_ptr<Domain> parseDomain(const std::string& filename);
};


/* Global Temporary Variables Used During Parsing */

/// the current domain being parsed
extern Domain domain;


/*** Functions used during parsing ***/

/* type-related functions */
void insertTypeNameList(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last); 
void insertTypeIntoCurrentTypeSet(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last); 
void insertTypeInheritance(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last); 

/*predicate-related functions */
void insertNewPredicate(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last);
void insertSingleTypedVariableListIntoCurrentTypedVariableList(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last);
void insertVariableIntoCurrentSingleTypeVarList(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last);
void insertTypedVariableListIntoCurrentPredicate(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last);

/*function-related functions */
void insertNewFunction(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last);
void insertFunctionTypeIntoCurrentFunction(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last);
void insertTypedVariableListIntoCurrentFunction(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last);

/*action-definition-related functions */
void insertNewDurativeAction(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last);
void insertParametersIntoCurrentDurativeAction(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last);

#endif

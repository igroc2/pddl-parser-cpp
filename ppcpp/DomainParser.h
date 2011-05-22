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
        std::vector<TypedVariable*> typedVariableList;
        std::string functionType; //< optional field; is empty if not provided in the domain
        ~Function();
};

struct Constant {
        std::string name;
        Type type; 
};

struct Predicate {
        std::string name;
        typedef std::vector<TypedVariable*> TypedVariableList;
        TypedVariableList typedVariableList;
        ~Predicate();
};

struct FExp {
    virtual ~FExp() {}
};

enum BinaryOp { BINARY_OP_MULTIPLY, BINARY_OP_PLUS, BINARY_OP_MINUS, BINARY_OP_DIVIDE };
std::string toString(BinaryOp op); 

struct BinaryOpFExp : public FExp {
    BinaryOp binaryOp;
    FExp* first;
    FExp* second; 
};

/// Variable start with "?" in PDDL.
/// If not variable, term is a constant identifier
struct Term {
    std::string name;
    bool isVariable() const;
};

struct FHead : public FExp {
    std::string functionSymbol;
    Term term;
};

enum DurationOp { DURATION_OP_LESS_THAN_EQUAL, DURATION_OP_GREATER_THAN_EQUAL, DURATION_OP_EQUALS };
enum TimeSpecifier { TIME_SPECIFIER_START, TIME_SPECIFIER_END, TIME_SPECIFIER_NONE };
enum DurationValueType { DURATION_VALUE_NUMBER, DURATION_VALUE_FEXP };

std::string toString(DurationOp op);
std::string toString(TimeSpecifier ts);
std::string toString(DurationValueType dvt);

typedef long DurationValueNumber;
typedef FExp DurationValueFExp;

struct SimpleDurationConstraint {
    TimeSpecifier timeSpecifier;
    DurationOp durationOp;
    DurationValueType durationValueType; //< NUMBER | fExp
    DurationValueNumber durationValueNumber;//< set only if durationValueType == DURATION_VALUE_NUMBER
    DurationValueFExp* durationValueFExp;    //< set only if durationValueType == DURATION_VALUE_FEXP 
};

struct DurationConstraint {
   typedef std::vector<SimpleDurationConstraint*> SimpleDurationConstraints;
   SimpleDurationConstraints simpleDurationConstraints;     
   ~DurationConstraint();
};

struct DurativeCondition {
};

struct DurativeEffect {
};

struct DurativeAction {
    std::string name;
    typedef std::vector<TypedVariable*> Parameters;
    Parameters parameters;
    DurationConstraint durationConstraint;
    DurativeCondition  durativeCondition;     
    DurativeEffect     durativeEffect;     
    ~DurativeAction();
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
void insertDurationConstraintIntoCurrentDurativeAction(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last);

void insertCurrentTimeSpecifier(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last);
void insertCurrentDurationOp(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last);
void insertCurrentSimpleDurationConstraint(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last);
void insertCurrentDurationValueNumber(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last);
void insertCurrentDurationValueFExp(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last);

#endif

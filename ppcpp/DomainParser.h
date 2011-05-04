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

struct Constraint {
};

struct AndConstraint: public Constraint {
        std::vector<Constraint*> constitutingConstraints;
};

struct ForAllConstraint: public Constraint {
        //TODO
};

struct GoalDesc {
};

struct AtEndConstraint: public Constraint {
        GoalDesc goalDesc;
};

struct AlwaysConstraint: public Constraint {
        GoalDesc goalDesc;
};

struct SometimeConstraint: public Constraint {
        GoalDesc goalDesc;
};

struct WithinConstraint: public Constraint {
        int num;
};

struct AtMostOnceConstraint: public Constraint {
        GoalDesc goalDesc;
};

struct SometimeAfterConstraint: public Constraint {
        GoalDesc goalDesc;
};

struct SometimeBeforeConstraint: public Constraint {
        GoalDesc goalDesc;
};

struct AlwaysWithinConstraint: public Constraint {
        GoalDesc goalDesc;
};

struct HoldsDuringConstraint: public Constraint {
        GoalDesc goalDesc;
};

struct HoldsAfterConstraint: public Constraint {
        GoalDesc goalDesc;
};

struct AndGoalDesc : public GoalDesc {
        std::vector<GoalDesc*> constitutingGoalDescs;
};

struct OrGoalDesc : public GoalDesc {
        std::vector<GoalDesc*> constitutingGoalDescs;
};

struct NotGoalDesc : public GoalDesc {
        GoalDesc goalDesc;
};

struct ImplyGoalDesc : public GoalDesc {
        GoalDesc impliesGoalDesc;
        GoalDesc impliedGoalDesc;
};

struct ExistsGoalDesc : public GoalDesc {
};

struct ForallGoalDesc : public GoalDesc {
};

struct Domain {
    std::string domainName;
    std::set<std::string> requirements;   
	typedef std::set<std::string> TypeSet;
	TypeSet types;   
    TypeInheritance typeInheritance;
    typedef std::vector<Function*> Functions;
    Functions functions;
    std::vector<Constant*> constants;
    typedef std::vector<Predicate*> Predicates;
    Predicates predicates;
	
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

#endif

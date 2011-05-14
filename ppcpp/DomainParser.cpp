#include "PddlDomainGrammar.h"
#include "DomainParser.h"
#include "PddlCommon.h"
#include <iterator>
#include "boost/foreach.hpp"
#include "boost/lexical_cast.hpp"

///////////////////////////////////////////////////////////////////////////////
//
//  Parse a file
//
///////////////////////////////////////////////////////////////////////////////
std::auto_ptr<Domain> DomainParser::parseDomain(const std::string& filename)
{
    std::ifstream in(filename.c_str());

    if (!in)
    {
        std::cerr << "Could not open input file: " << filename << std::endl;
        return std::auto_ptr<Domain>();
    }

    in.unsetf(std::ios::skipws); //  Turn of white space skipping on the stream

    std::vector<char> vec;
    std::copy(
        std::istream_iterator<char>(in),
        std::istream_iterator<char>(),
        std::back_inserter(vec));

    std::vector<char>::const_iterator first = vec.begin();
    std::vector<char>::const_iterator last = vec.end();

    std::auto_ptr<pddl_skipper> skip_p = create_pddl_skipper();
    std::auto_ptr<pddl_grammar> p = create_pddl_grammar();

#ifdef BOOST_SPIRIT_DEBUG
    BOOST_SPIRIT_DEBUG_NODE(skip_p);
    BOOST_SPIRIT_DEBUG_NODE(p);
#endif

    parse_info<std::vector<char>::const_iterator> info =
        parse(first, last, *p, *skip_p);

    if (info.full)
    {
        std::cout << "\t\t" << filename << " Parses OK\n\n\n";
    }
    else
    {
        std::cerr << "---PARSING FAILURE---\n";
        std::cerr << std::string(info.stop, last);
    }

    std::cout << "Printing domain:\n";
    std::cout << domain.toString();
    
    return std::auto_ptr<Domain>();
}

std::string Domain::toString() const
{
    std::string s;
    
    // domain name
    s += std::string("[") + domainName + "] domain";
    s += "\n\n";
    
    // types
    s += "types:\n";
    BOOST_FOREACH(Type t, domain.types) {
      s += std::string("[") + t + "] ";
    }
    s += "\n\n";
    
    // inheritances
    s += "type inheritances:\n";
    BOOST_FOREACH(TypeInheritance::value_type t, domain.typeInheritance) {
      s += std::string("[") + t.first + "] -> [" + t.second + "]\n";
    }
    s += "\n";
    
    // predicates
    s += "predicates:\n";
    BOOST_FOREACH(Predicates::value_type p, domain.predicates) {
      s += std::string("(") + p->name;
      BOOST_FOREACH(Predicate::TypedVariableList::value_type t, p->typedVariableList) {
          s += " " + t.name + " - " + t.type; 
      }
      s += ")\n";
    }
    s += "\n";
    
    // functions
    s += "functions:\n";
    BOOST_FOREACH(Functions::value_type p, domain.functions) {
      s += std::string("(") + p->functionSymbol;
      if(!p->functionType.empty()) s += " - " + p->functionType + " ";
      BOOST_FOREACH(Predicate::TypedVariableList::value_type t, p->typedVariableList) {
          s += " " + t.name + " - " + t.type; 
      }
      s += ")\n";
    }
    s += "\n";
    
    // durative actions
    s += "durative actions:\n";
    BOOST_FOREACH(DurativeActions::value_type p, domain.durativeActions) {
      s += std::string("(") + p->name;
      s += "(:parameters ";
      BOOST_FOREACH(Predicate::TypedVariableList::value_type t, p->parameters) {
          s += " " + t.name + " - " + t.type; 
      }
      s += ")\n";
      s += "(:duration ";
      BOOST_FOREACH(DurationConstraint::SimpleDurationConstraints::value_type c, p->durationConstraint.simpleDurationConstraints) {
         //TODO s += std::string(" ") + c.timeSpecifier + " " + c.durationOp + " " + c.durationValueType; 
      }
      s += ")\n";
      s += ")\n";
    }
    s += "\n";
    
    return s;
}

Domain::~Domain() {
    BOOST_FOREACH(Function* f, functions) {
        delete f;
    }
    BOOST_FOREACH(Constant* f, constants) {
        delete f;
    }
    BOOST_FOREACH(Predicate* f, predicates) {
        delete f;
    }
}

Domain domain;




/* Inserting Types */

/*
 * Example of types:
 *
 * (:types truck airplane - vehicle
           package vehicle - thing
           airport - location
           city location thing - object)
 *
 */

/// used for fill the TypeInheritance map
Domain::TypeSet currentTypeSet;

void insertTypeNameList(std::vector<char>::const_iterator /*first*/ , std::vector<char>::const_iterator /*last*/)
{
  Type object("object");
  Type number("number");
  // inserting the default PDDL types 
  domain.types.insert(object);
  domain.types.insert(number);
}

/// Inserts the current type into currentTypeSet, as well as domain.types.
void insertTypeIntoCurrentTypeSet(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{  
    std::string typeName(first, last);
    Type t(typeName); 
    currentTypeSet.insert(t);
    domain.types.insert(t); 
    std::cout << "Type [" << t << "] into domain.types" << std::endl;
}

void insertTypeInheritance(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{
    /// First, the currentTypeSet is filled with types that inherit from a base type. 
    /// Next, the types within currentTypeSet are inserted into inheritsFrom map.  
    /// Finally, currentTypeSet is cleared.
    std::string base(first, last);
    BOOST_FOREACH(std::string type, currentTypeSet) {
      domain.typeInheritance.insert(std::make_pair(type, base)); 
      std::cout << "Type inheritance [" << type << "->" << base << "] into domain.typeInheritance" << std::endl;
    }
    currentTypeSet.clear();
}





/* Inserting Predicates */
/*
 * example:
   (:predicates (in-city ?l - location ?c - city)
                (at ?obj - thing ?l - location)
                (in ?p - package ?veh - vehicle))
 */

Predicate* currentPredicate;
std::set<std::string> currentSingleTypeVarList;
Predicate::TypedVariableList currentTypedVariableList;

void insertNewPredicate(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{
    currentPredicate = new Predicate;
    currentPredicate->name = std::string(first, last); 
    domain.predicates.push_back(currentPredicate); 
}

void insertSingleTypedVariableListIntoCurrentTypedVariableList(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{
    Type type(first, last);
    BOOST_FOREACH(std::string var, currentSingleTypeVarList) {
      TypedVariable v;
      v.name = var;
      v.type = type; 
      currentTypedVariableList.push_back(v); 
      std::cout << "Typed variable [" << var << " - " << type << "] into currentTypedVariableList" << std::endl;
    }
    currentSingleTypeVarList.clear();
}

void insertVariableIntoCurrentSingleTypeVarList(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{
    std::string var(first, last);
    currentSingleTypeVarList.insert(var); 
}

void insertTypedVariableListIntoCurrentPredicate(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{
    currentPredicate->typedVariableList.swap(currentTypedVariableList); 
    currentTypedVariableList.clear();
}






/* An example of a function is:
 *
(:functions (drive-time ?from ?to - location))
*/

Function* currentFunction;

void insertNewFunction(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{
    currentFunction = new Function;
    currentFunction->functionSymbol = std::string(first, last); 
    domain.functions.push_back(currentFunction); 
}

void insertFunctionTypeIntoCurrentFunction(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{
    currentFunction->functionType = std::string(first, last);
}

void insertTypedVariableListIntoCurrentFunction(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{
    currentFunction->typedVariableList.swap(currentTypedVariableList); 
    currentTypedVariableList.clear();
}


/* An example of a durative action is:
 *
(:durative-action load
 :parameters (?p - package ?t - truck ?a1 - truckarea ?l - location)
 :duration (= ?duration 1)
 :condition (and (at start (at ?p ?l)) (at start (free ?a1 ?t))
  		 (at start (forall (?a2 - truckarea)
  			      (imply (closer ?a2 ?a1) (free ?a2 ?t))))
	         (over all (at ?t ?l)) 
  		 (over all (forall (?a2 - truckarea)
  			      (imply (closer ?a2 ?a1) (free ?a2 ?t)))))
 :effect (and (at start (not (at ?p ?l))) (at start (not (free ?a1 ?t)))
  	 (at end (in ?p ?t ?a1))))
*/

DurativeAction* currentDurativeAction;

void insertNewDurativeAction(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{
    currentDurativeAction = new DurativeAction;
    currentDurativeAction->name = std::string(first, last); 
    domain.durativeActions.push_back(currentDurativeAction); 
}

void insertParametersIntoCurrentDurativeAction(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{
    currentDurativeAction->parameters.swap(currentTypedVariableList); 
    currentTypedVariableList.clear();
}

struct TimeSpecifierHolder {
    TimeSpecifierHolder()
    { currentTimeSpecifier = TIME_SPECIFIER_NONE; }

    /// resets TimeSpecifier as soon as it is readOnceReset
    TimeSpecifier readOnceReset() {
        TimeSpecifier c = currentTimeSpecifier;
        currentTimeSpecifier = TIME_SPECIFIER_NONE;
        return c;
    }
    /// parses string to get the TimeSpecifier
    void write(std::string name) {
        if(name == "start") currentTimeSpecifier = TIME_SPECIFIER_START;
        else if(name == "end") currentTimeSpecifier = TIME_SPECIFIER_END;
        else assert(false);
    }

private:
    TimeSpecifier currentTimeSpecifier;
};

TimeSpecifierHolder currentTimeSpecifierHolder;
DurationConstraint currentDurationConstraint;
SimpleDurationConstraint currentSimpleDurationConstraint;
DurationOp currentDurationOp;
DurationValueType currentDurationValueType;
DurationValueNumber currentDurationValueNumber;
DurationValueFExp currentDurationValueFExp;

void insertDurationConstraintIntoCurrentDurativeAction(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{
    currentDurativeAction->durationConstraint = currentDurationConstraint;
}

void insertCurrentTimeSpecifier(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last) 
{
    std::string name(first, last);
    currentTimeSpecifierHolder.write(name); 
}

void insertCurrentDurationOp(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{
    std::string name(first, last);
    if(name == "<=") currentDurationOp = DURATION_OP_LESS_THAN_EQUAL;
    else if(name == ">=") currentDurationOp = DURATION_OP_GREATER_THAN_EQUAL;
    else if(name == "=") currentDurationOp = DURATION_OP_EQUALS;
    else assert(false);
}

void insertCurrentSimpleDurationConstraint(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{
    std::string name(first, last);
    currentSimpleDurationConstraint.timeSpecifier = currentTimeSpecifierHolder.readOnceReset();
    currentSimpleDurationConstraint.durationOp = currentDurationOp;
    currentSimpleDurationConstraint.durationValueType = currentDurationValueType;
    if(currentDurationValueType == DURATION_VALUE_NUMBER) {
        currentSimpleDurationConstraint.durationValueNumber = currentDurationValueNumber;
        //TODO currentSimpleDurationConstraint.durationValueFExp = ;
    }
    else {
        currentSimpleDurationConstraint.durationValueNumber = -1;
        currentSimpleDurationConstraint.durationValueFExp = currentDurationValueFExp;
    }
}

void insertCurrentDurationValueNumber(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{
    currentDurationValueType = DURATION_VALUE_NUMBER;
    std::string name(first, last);
    currentDurationValueNumber = boost::lexical_cast<long>(name);
}

void insertCurrentDurationValueFExp(std::vector<char>::const_iterator first, std::vector<char>::const_iterator last)
{
    currentDurationValueType = DURATION_VALUE_FEXP;
    //assert(false); //TODO
}



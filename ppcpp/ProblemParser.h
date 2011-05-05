#ifndef PROBLEM_PARSER_H
#define PROBLEM_PARSER_H

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

class ProblemParser {
        public:
        std::auto_ptr<Problem> parseProblem(const std::string& filename);
};

#endif


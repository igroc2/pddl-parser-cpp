#ifndef PROBLEM_PARSER_H
#define PROBLEM_PARSER_H

class ProblemParser {
        public:
        std::auto_ptr<Problem> parseProblem(const std::string& filename);
};

#endif


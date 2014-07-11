#ifndef HELPERS_DUMMY_PARSER_H_
#define HELPERS_DUMMY_PARSER_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "tree_sitter/runtime.h"
#include "tree_sitter/parser.h"

enum {
    dummy_sym1 = 2,
    dummy_sym2 = 3,
    dummy_sym3 = 4,
};

extern TSParserConfig dummy_parser;

#ifdef __cplusplus
}
#endif

#endif  // HELPERS_DUMMY_PARSER_H_
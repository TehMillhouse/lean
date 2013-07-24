/*
Copyright (c) 2013 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Author: Leonardo de Moura
*/
#pragma once
#include <memory>
#include "expr.h"

namespace lean {
/**
   \brief Functional object for creating expressions with maximally
   shared sub-expressions.
*/
class max_sharing_fn {
    struct imp;
    friend expr max_sharing(expr const & a);
    std::unique_ptr<imp> m_imp;
public:
    max_sharing_fn();
    ~max_sharing_fn();

    expr operator()(expr const & a);

    /**
       \brief Clear the cache.
    */
    void clear();
};


/**
   \brief The resultant expression is structurally identical to the input one, but
   it uses maximally shared sub-expressions.
*/
expr max_sharing(expr const & a);
}

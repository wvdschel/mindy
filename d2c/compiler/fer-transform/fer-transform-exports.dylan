module: dylan-user
rcs-header: $Header: /scm/cvs/src/d2c/compiler/fer-transform/fer-transform-exports.dylan,v 1.2 2000/06/11 22:38:19 emk Exp $
copyright: see below


//======================================================================
//
// Copyright (c) 1995, 1996, 1997  Carnegie Mellon University
// Copyright (c) 1998, 1999, 2000  Gwydion Dylan Maintainers
// All rights reserved.
// 
// Use and copying of this software and preparation of derivative
// works based on this software are permitted, including commercial
// use, provided that the following conditions are observed:
// 
// 1. This copyright notice must be retained in full on any copies
//    and on appropriate parts of any derivative works.
// 2. Documentation (paper or online) accompanying any system that
//    incorporates this software, or any part of it, must acknowledge
//    the contribution of the Gwydion Project at Carnegie Mellon
//    University, and the Gwydion Dylan Maintainers.
// 
// This software is made available "as is".  Neither the authors nor
// Carnegie Mellon University make any warranty about the software,
// its performance, or its conformity to any specification.
// 
// Bug reports should be sent to <gd-bugs@gwydiondylan.org>; questions,
// comments and suggestions are welcome at <gd-hackers@gwydiondylan.org>.
// Also, see http://www.gwydiondylan.org/ for updates and documentation. 
//
//======================================================================

define library compiler-fer-transform
  use dylan;
  use compiler-base;
  use compiler-front;

  export
    fer-transform,
    abstract-optimizer,
    null-optimizer;
end library compiler-fer-transform;

define module abstract-optimizer
  use common;
  use flow, import: {<component>};
  use front, import: {dump-fer};

  export
    <abstract-optimizer>,
      debug-optimizer?, debug-optimizer?-setter,
    optimize-component,
    maybe-dump-fer;
end module abstract-optimizer;

define module fer-transform
  use common;
  use utils;
  use errors;
  use compile-time-values;
  use platform,
    import: {*current-target*, platform-integer-length};
  use names;
  use definitions;
  use variables, exclude: {<renaming>};
  use flow;
  use front, exclude: {build-xep-component, optimize-component};
  use ctype;
  use classes;
  use signature-interface;
  use source;
  use builder-interface;
  use policy;
  use primitives;
  use transformers;
  use compile-time-functions;
  use function-definitions;

  // XXX - For use by build-xep-component only. This will go away when
  // build-xep-component moves into cback.
  use abstract-optimizer;

  export
    build-local-xeps,
    build-xep-component;
end module fer-transform;

define module null-optimizer
  use common;
  use flow, import: {<component>};
  use utils, import: {dformat};

  use abstract-optimizer;
  use fer-transform;

  export
    <null-optimizer>;
end module null-optimizer;
Module: dylan-user

define library hello
  use common-dylan;
  use io, import: { format-out };

  export
    hello,
    hello-impl;
end library;

// Interface module creates public API, ensuring that an implementation
//  module exports them.
define module hello
  create
    greeting;                   // Example. Delete me.
end module;

// Implementation module implements definitions for names created by the
// interface module and exports names for use by test suite.  %foo, foo-impl,
// or foo-internal are common names for an implementation module.
define module hello-impl
  use common-dylan;
  use hello;                  // Declare that we will implement "greeting".

  // Additional exports for use by test suite.
  export
    $greeting;                  // Example code. Delete me.
end module;

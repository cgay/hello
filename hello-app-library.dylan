Module: dylan-user
Synopsis: Module and library definition for executable application

define library hello-app
  use common-dylan;
  use hello;
  use io, import: { format-out };
end library;

define module hello-app
  use common-dylan;
  use format-out;
  use hello;
end module;

Module: dylan-user

define library hello-test-suite
  use common-dylan;
  use testworks;
  use hello;
end library;

define module hello-test-suite
  use common-dylan;
  use testworks;
  use hello;
  use hello-impl;
end module;

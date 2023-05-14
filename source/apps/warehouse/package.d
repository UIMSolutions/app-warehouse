module apps.warehouse;

mixin(ImportPhobos!());

public { // required uim libraries
  import uim.core;
  import uim.oop;
  import uim.apps;
}

public { // admin-warehouse libraries
  import apps.warehouse.controllers;
  import apps.warehouse.views;
}

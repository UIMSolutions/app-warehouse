/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.warehouse;

mixin(ImportPhobos!());

// External
public {
  import vibe.d;
}

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import web.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.warehouse.controllers;
  import apps.warehouse.helpers;
  import apps.warehouse.routers;
  import apps.warehouse.tests;
  import apps.warehouse.views;
}

static this() {
  auto myApp = App("warehouseApp", "apps/warehouse");

  with(myApp) {
    importTranslations;
    addControllers([
      "wh.index": IndexPageController
    ]);
    addRoutes(
      Route("", HTTPMethod.GET, controller("wh.index")),
      Route("/", HTTPMethod.GET, controller("wh.index"))
    );
  }

  AppRegistry.register("apps.warehouse", myApp);
}

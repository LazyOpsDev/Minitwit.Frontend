import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './route_handlers.dart';

class Routes {
  static String root = "/";
  static String home = "/home";
  static String register = "/register";
  static String login = "/login";
  static String timeline = "/timeline";
  static String users = "/users/:id";

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });
    router.define(root, handler: rootHandler, transitionType: TransitionType.fadeIn);
    router.define(home, handler: homeHandler, transitionType: TransitionType.fadeIn);
    router.define(login, handler: loginHandler, transitionType: TransitionType.fadeIn);
    router.define(register, handler: registerHandler, transitionType: TransitionType.fadeIn);
    router.define(timeline, handler: timelineHandler, transitionType: TransitionType.fadeIn);
    router.define(users, handler: userHandler, transitionType: TransitionType.fadeIn);
  }
}

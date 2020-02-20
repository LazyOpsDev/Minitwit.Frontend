import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:minitwit_frontend/models/user.dart';
import 'package:minitwit_frontend/nav/navbar.dart';
import 'package:minitwit_frontend/pages/home.dart';
import 'package:minitwit_frontend/pages/login.dart';
import 'package:minitwit_frontend/pages/register.dart';
import 'package:minitwit_frontend/pages/timeline.dart';
import 'package:minitwit_frontend/pages/userPage.dart';

final rootHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  // TODO: If logged in => home, else => login
  return NavigationContainer(body: HomePage());
});

final homeHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return NavigationContainer(body: HomePage());
});

final loginHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return LoginPage();
});

final registerHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return RegisterPage();
});

final timelineHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return NavigationContainer(body: TimelinePage());
});

final userHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return NavigationContainer(body: UserPage(User(username: params["id"][0])));
  });
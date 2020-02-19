import 'package:flutter/painting.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:minitwit_frontend/pages/home.dart';
import 'package:minitwit_frontend/pages/login.dart';
import 'package:minitwit_frontend/pages/register.dart';

final rootHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  // TODO: If logged in => home, else => login
  return HomePage();
});

final homeHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return HomePage();
});

final loginHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return LoginPage();
});

final registerHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return RegisterPage();
});
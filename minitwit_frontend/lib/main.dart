import 'package:flutter/material.dart';
import 'pages/login.dart';

void main() {
  runApp(AppComponent());
}

class AppComponent extends StatefulWidget {
  @override
  State createState() {
    return AppComponentState();
  }
}

class AppComponentState extends State<AppComponent> {

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'Minitwit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );

    return app;
  }
}
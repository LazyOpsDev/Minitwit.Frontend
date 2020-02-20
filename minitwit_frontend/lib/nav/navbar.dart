
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minitwit_frontend/config/application.dart';

class NavigationContainer extends StatelessWidget {

  final Widget body;
  const NavigationContainer({
    Key key,
    this.body
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.timeline),
            onPressed: () {
                  Application.router.navigateTo(context, "/timeline", transition: TransitionType.fadeIn);
            }
          ),

          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
                  Application.router.navigateTo(context, "/home", transition: TransitionType.fadeIn);
            }
          ),

        ],
      ),
      body: this.body,
    );
  }
}
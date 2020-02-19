
import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Text("Register on Mobile"),
      desktop: Text("Register on desktop"),
    );
  }
}

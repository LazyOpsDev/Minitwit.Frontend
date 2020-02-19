
import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Text("Home on Mobile"),
      desktop: Text("Home on desktop"),
    );
  }
}

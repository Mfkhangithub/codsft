import 'package:flutter/material.dart';

import '../../View/homescreen.dart';
import 'routs_name.dart';
class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final argume = settings.arguments;
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext) => HomePage());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text("No Route defind"),
            ),
          );
        });
    }
  }
}

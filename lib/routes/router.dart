import 'package:flutter/material.dart';

import 'package:express/screens/entrance_loading_page/entrance_loading.dart';
import 'package:express/screens/home/home_page.dart';
import 'package:express/screens/location/locationpage.dart';

class RouterGenerate {
  static generateRoute(RouteSettings settings) {
    final _arguments = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => const EntranceLoadingPage(),
        );
      case "/home":
        return MaterialPageRoute(
          builder: (context) => MainHomePage(),
        );
      case "/location":
        return MaterialPageRoute(
          builder: (context) => const LocationPage(),
        );
    }
  }
}

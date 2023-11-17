import 'dart:js';

import 'package:flutter/material.dart';
import 'package:ws_code_practicle/splash/spash_screen.dart';

class AppRoutes {
  static const String splashPage = '/splash';
  static const String homePage = '/home';

  static Map<String, Widget Function(BuildContext)> myRoutes(){
    return {
      splashPage : (context) => SplashScreen(),
      homePage : (context) => Dialog()
    };
  }
}
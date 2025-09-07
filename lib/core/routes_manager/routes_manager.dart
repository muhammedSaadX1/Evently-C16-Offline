import 'package:evently_offline_sun/features/auth/login/login.dart';
import 'package:evently_offline_sun/features/auth/register/register.dart';
import 'package:flutter/cupertino.dart';

abstract class RoutesManager {
  static const String register = "/register";
  static const String login = "/login";

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case register:
        {
          return CupertinoPageRoute(builder: (context) => Register());
        }
      case login:
        {
          return CupertinoPageRoute(builder: (context) => Login());
        }
    }
  }
}

///

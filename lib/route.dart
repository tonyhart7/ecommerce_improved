import 'package:ecommerce_improved/screens/sing_in/sing_in_screen.dart';
import 'package:ecommerce_improved/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

// Routes Configuration
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};

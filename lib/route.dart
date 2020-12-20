import 'package:ecommerce_improved/screens/cart/cart_screen.dart';
import 'package:ecommerce_improved/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerce_improved/screens/details/details_screen.dart';
import 'package:ecommerce_improved/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_improved/screens/home/home_screen.dart';
import 'package:ecommerce_improved/screens/login_success/components/login_success_screen.dart';
import 'package:ecommerce_improved/screens/otp/otp_screen.dart';
import 'package:ecommerce_improved/screens/profile/profile_screen.dart';
import 'package:ecommerce_improved/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce_improved/screens/sing_in/sing_in_screen.dart';
import 'package:ecommerce_improved/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

// Routes Configuration
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailScreen.routeName: (context) => DetailScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};

import 'package:flutter/material.dart';

import 'size_config.dart';

const hPrimaryColor = Color(0xFF6BB9F0);
const hPrimaryLightColor = Color(0xFF89C4F4);
const hPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFF9482), Color(0xFFFF9482)],
);
const hSecondaryColor = Color(0xFF636E72);
const hTextColor = Color(0xFF2D3436);

const hAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionalScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String hEmailNullError = "Please Enter your Email";
const String hInvalidEmailError = "Please Enter Valid Email";
const String hPassNullError = "Please Enter your password";
const String hShortPassError = "Password is too short";
const String hMatchPassError = "Passwords don't match";
const String hNameNullError = "Please Enter your name";
const String hPhoneNumberNullError = "Please Enter your phone number";
const String hAddressNullError = "Please Enter your address";

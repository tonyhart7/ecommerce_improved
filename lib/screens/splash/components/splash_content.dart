import 'package:flutter/material.dart';

import 'package:ecommerce_improved/constants.dart';
import 'package:ecommerce_improved/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'MAMAZON',
          style: TextStyle(
            fontSize: getProportionalScreenWidth(36),
            color: hPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionalScreenHeight(270),
          width: getProportionalScreenWidth(300),
        ),
      ],
    );
  }
}

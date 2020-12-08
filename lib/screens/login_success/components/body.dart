import 'package:ecommerce_improved/components/default_button.dart';
import 'package:ecommerce_improved/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          'assets/images/login success.jpg',
          height: SizeConfig.screenHeight * 0.5, //50%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          'You good to go',
          style: TextStyle(
            fontSize: getProportionalScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: 'Take me to Home',
            press: () {},
          ),
        ),
        Spacer(),
      ],
    );
  }
}

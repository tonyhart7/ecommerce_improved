import 'package:ecommerce_improved/constants.dart';
import 'package:ecommerce_improved/size_config.dart';
import 'package:flutter/material.dart';

import 'otp_form.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionalScreenWidth(20)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.05),
            Text('OTP Verification', style: headingStyle),
            Text('We sent your code to +62 678 128 192'),
            buildTimer(),
            SizedBox(height: SizeConfig.screenHeight * 0.15),
            OtpForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            GestureDetector(
              onTap: () {
                // resend Otp
              },
              child: Text(
                'Resend OTP Code',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('This code will expired in '),
        TweenAnimationBuilder(
          tween: Tween(begin: 31.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            '00:${value.toInt()}',
            style: TextStyle(color: hPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}

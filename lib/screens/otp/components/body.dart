import 'package:ecommerce_improved/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('OTP Verification', style: headingStyle),
        Text('We sent your code to +62 678 128 192'),
        Row(
          children: [],
        )
      ],
    );
  }
}

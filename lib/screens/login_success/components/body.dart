import 'package:ecommerce_improved/components/default_button.dart';
import 'package:ecommerce_improved/screens/home/home_screen.dart';
import 'package:ecommerce_improved/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight! * 0.03),
            Image.asset(
              'assets/images/login success.jpg',
              height: SizeConfig.screenHeight! * 0.5, //50%
              fit: BoxFit.fitHeight,
            ),
            SizedBox(height: SizeConfig.screenHeight! * 0.08),
            Text(
              'Login berhasil',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Spacer(),
            SizedBox(
              width: SizeConfig.screenWidth! * 0.6,
              child: DefaultButton(
                text: 'ke Home Menu',
                press: () =>
                    Navigator.popAndPushNamed(context, HomeScreen.routeName),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    ]);
  }
}

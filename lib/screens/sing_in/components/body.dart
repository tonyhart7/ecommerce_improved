import 'package:ecommerce_improved/screens/sing_in/components/sing_form.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionalScreenWidth(20)),
          child: Column(
            children: [
              Text(
                'Welcome',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionalScreenWidth(28),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Sign in with your email and pasword or continue with social media',
                textAlign: TextAlign.center,
              ),
              SignForm(),
            ],
          ),
        ),
      ),
    );
  }
}

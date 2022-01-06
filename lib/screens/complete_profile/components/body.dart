import 'package:ecommerce_improved/constants.dart';
import 'package:ecommerce_improved/size_config.dart';
import 'package:flutter/material.dart';

import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.02),
              Text(
                'Complete Profile',
                style: headingStyle,
              ),
              Text(
                'Complete your details or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.05),
              CompleteProfileForm(),
              SizedBox(height: getProportionalScreenHeight(30)),
              Text(
                'By continuing your confirm that you agree \nwith our term and service',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}

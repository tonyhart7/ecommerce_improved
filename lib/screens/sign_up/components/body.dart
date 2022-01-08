import 'package:ecommerce_improved/components/social_card.dart';
import 'package:ecommerce_improved/constants.dart';
import 'package:ecommerce_improved/screens/sign_up/components/sing_up_form.dart';
import 'package:ecommerce_improved/size_config.dart';
import 'package:flutter/material.dart';

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
                'Mendaftar Akun',
                style: headingStyle,
              ),
              Text(
                'Selesaikan Registrasi \n atau daftar dengan sosial media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.07),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: 'assets/icons/facebook.svg',
                    press: () {},
                  ),
                  SocialCard(
                    icon: 'assets/icons/search.svg',
                    press: () {},
                  ),
                  SocialCard(
                    icon: 'assets/icons/twitter.svg',
                    press: () {},
                  )
                ],
              ),
              SizedBox(height: getProportionalScreenHeight(20)),
              Text(
                'dengan mendaftar berarti anda\n menyetujui syarat dan ketentuan',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

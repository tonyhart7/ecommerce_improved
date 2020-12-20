import 'package:ecommerce_improved/screens/profile/components/profile_menu.dart';
import 'package:ecommerce_improved/screens/profile/components/profile_pic.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20),
        ProfileMenu(
          text: 'My Account',
          icon: 'assets/icons/User Icon.svg',
          press: () {},
        ),
        ProfileMenu(
          text: 'Notification',
          icon: 'assets/icons/Bell.svg',
          press: () {},
        ),
        ProfileMenu(
          text: 'Settings',
          icon: 'assets/icons/Settings.svg',
          press: () {},
        ),
        ProfileMenu(
          text: 'Help Center',
          icon: 'assets/icons/Question mark.svg',
          press: () {},
        ),
        ProfileMenu(
          text: 'Logout',
          icon: 'assets/icons/Log out.svg',
          press: () {},
        ),
      ],
    );
  }
}

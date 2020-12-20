import 'package:ecommerce_improved/components/custom_button_navbar.dart';
import 'package:ecommerce_improved/enums.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/Profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}

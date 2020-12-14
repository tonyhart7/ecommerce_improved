import 'package:ecommerce_improved/screens/cart/cart_screen.dart';
import 'package:ecommerce_improved/screens/home/components/search_field.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionalScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            iconBtn: Icon(Icons.shopping_cart_outlined),
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBtnWithCounter(
            iconBtn: Icon(Icons.notifications_none_outlined),
            numOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}

import 'package:ecommerce_improved/screens/home/components/popular_product.dart';
import 'package:ecommerce_improved/screens/home/components/special_offers.dart';
import 'package:flutter/material.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5),
            HomeHeader(),
            SizedBox(height: 30),
            DiscountBanner(),
            SizedBox(height: 30),
            Categories(),
            SizedBox(height: 30),
            SpecialOffers(),
            SizedBox(height: 30),
            PopularProduct(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

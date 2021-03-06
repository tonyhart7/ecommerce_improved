import 'package:ecommerce_improved/screens/home/components/popular_product.dart';
import 'package:ecommerce_improved/screens/home/components/special_offers.dart';
import 'package:ecommerce_improved/size_config.dart';
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
            SizedBox(height: getProportionalScreenWidth(5)),
            HomeHeader(),
            SizedBox(height: getProportionalScreenWidth(30)),
            DiscountBanner(),
            SizedBox(height: getProportionalScreenWidth(30)),
            Categories(),
            SizedBox(height: getProportionalScreenWidth(30)),
            SpecialOffers(),
            SizedBox(height: getProportionalScreenWidth(30)),
            PopularProduct(),
            SizedBox(height: getProportionalScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}

import 'package:ecommerce_improved/screens/home/components/popular_product.dart';
import 'package:flutter/material.dart';

import 'home_header.dart';
import 'staggered_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5),
            HomeHeader(),
            // DiscountBanner(),
            // SizedBox(height: 30),
            // Categories(),
            // SizedBox(height: 30),
            // SpecialOffers(),
            SizedBox(height: 30),
            StaggeredListProduct(),
            SizedBox(height: 30),
            PopularProduct(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

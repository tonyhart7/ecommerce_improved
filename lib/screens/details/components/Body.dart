import 'package:ecommerce_improved/components/default_button.dart';
import 'package:ecommerce_improved/models/Product.dart';
import 'package:ecommerce_improved/screens/details/components/product_description.dart';
import 'package:ecommerce_improved/screens/details/components/product_images.dart';
import 'package:ecommerce_improved/screens/details/components/top_rounded_container.dart';
import 'package:ecommerce_improved/size_config.dart';
import 'package:flutter/material.dart';

import 'color_dots.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth! * 0.15,
                              right: SizeConfig.screenWidth! * 0.15,
                              top: 15,
                              bottom: 40,
                            ),
                            child: DefaultButton(
                              text: 'Masukkan ke Keranjang',
                              press: () {},
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

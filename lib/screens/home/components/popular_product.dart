import 'package:ecommerce_improved/components/product_card.dart';
import 'package:ecommerce_improved/models/Product.dart';
import 'package:ecommerce_improved/screens/details/details_screen.dart';
import 'package:ecommerce_improved/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Product Populer',
          press: () {},
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(
                    context,
                    DetailScreen.routeName,
                    arguments:
                        ProductDetailsArguments(product: demoProducts[index]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:ecommerce_improved/components/product_card.dart';
import 'package:ecommerce_improved/models/Product.dart';
import 'package:ecommerce_improved/screens/details/details_screen.dart';
import 'package:ecommerce_improved/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../size_config.dart';

class StaggeredListProduct extends StatelessWidget {
  const StaggeredListProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Product Terlaris',
          press: () {},
        ),
        SizedBox(height: 20),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.6,
          width: SizeConfig.screenWidth! * 1,
          child: StaggeredGridView.countBuilder(
            crossAxisSpacing: 18,
            crossAxisCount: 2,
            itemCount: demoProducts.length,
            mainAxisSpacing: 15,
            staggeredTileBuilder: (index) => StaggeredTile.fit(1),
            itemBuilder: (context, index) {
              return ProductCard(
                product: demoProducts[index],
                press: () => Navigator.pushNamed(
                  context,
                  DetailScreen.routeName,
                  arguments:
                      ProductDetailsArguments(product: demoProducts[index]),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

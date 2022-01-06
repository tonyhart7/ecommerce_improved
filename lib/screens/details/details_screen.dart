import 'package:ecommerce_improved/models/Product.dart';
import 'package:flutter/material.dart';

import 'components/Body.dart';
import 'components/custom_app_bar.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = '/detail';

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context)?.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      appBar: PreferredSize(
          child: CustomAppBar(arguments.product.rating),
          preferredSize: Size.fromHeight(72)),
      body: Body(product: arguments.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}

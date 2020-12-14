import 'package:ecommerce_improved/components/default_button.dart';
import 'package:ecommerce_improved/constants.dart';
import 'package:ecommerce_improved/size_config.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_improved/models/Cart.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckOutCart(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            'Your Cart',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            '${demoCarts.length} items',
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}

class CheckOutCart extends StatelessWidget {
  const CheckOutCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionalScreenWidth(15),
        horizontal: getProportionalScreenWidth(30),
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: getProportionalScreenWidth(40),
                  width: getProportionalScreenWidth(40),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset('assets/icons/receipt.svg'),
                ),
                Spacer(),
                Text('Add voucher code'),
                const SizedBox(width: 10),
                Icon(Icons.arrow_forward_ios, size: 12, color: hTextColor),
              ],
            ),
            SizedBox(height: getProportionalScreenHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Total:\n',
                    children: [
                      TextSpan(
                        text: '\$715.40',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionalScreenWidth(190),
                  child: DefaultButton(
                    text: 'Check Out',
                    press: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

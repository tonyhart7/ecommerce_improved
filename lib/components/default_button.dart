import 'package:ecommerce_improved/constants.dart';
import 'package:ecommerce_improved/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key key, this.text, this.press}) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionalScreenHeight(56),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: hPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
              fontSize: getProportionalScreenWidth(18), color: Colors.white),
        ),
      ),
    );
  }
}

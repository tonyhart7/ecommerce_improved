import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Dont have an account ?',
          style: TextStyle(fontSize: getProportionalScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            'Sing Up',
            style: TextStyle(
                fontSize: getProportionalScreenWidth(16), color: hPrimaryColor),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../constants.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.iconBtn,
    this.numOfItems = 0,
    required this.press,
  }) : super(key: key);

  final Icon iconBtn;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              color: hSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: iconBtn,
          ),
          if (numOfItems != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    '$numOfItems',
                    style: TextStyle(
                        fontSize: 10,
                        height: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}

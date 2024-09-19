import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/size_config.dart';

class RoundedSvgButton extends StatelessWidget {
  const RoundedSvgButton({
    super.key,
    required this.icon,
    required this.press,
  });

  final String icon;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(40),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          backgroundColor: Colors.white,
        ),
        onPressed: press,
        child: SvgPicture.asset(
          icon,
          height: 15,
        ),
      ),
    );
  }
}

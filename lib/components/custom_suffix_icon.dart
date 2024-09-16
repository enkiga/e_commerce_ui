import 'package:flutter/material.dart';

import '../constants/size_config.dart';

class CustomSuffix extends StatelessWidget {
  const CustomSuffix({
    super.key,
    required this.iconSelect,
  });

  final IconData iconSelect;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
      ),
      child: Icon(
        iconSelect as IconData?,
        size: getProportionateScreenWidth(18),
      ),
    );
  }
}

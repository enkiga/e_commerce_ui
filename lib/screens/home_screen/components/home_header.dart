import 'package:e_commerce_ui/screens/home_screen/components/search_field.dart';
import 'package:flutter/material.dart';

import '../../../constants/size_config.dart';
import '../../cart_screen/cart_screen.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconBtnWithCounter(
            icons: Icons.shopping_cart,
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBtnWithCounter(
            icons: Icons.notifications,
            numOfItems: 4,
            press: () {},
          ),
        ],
      ),
    );
  }
}

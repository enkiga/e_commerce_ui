import 'package:e_commerce_ui/constants/size_config.dart';
import 'package:e_commerce_ui/screens/home_screen/components/popular_products.dart';
import 'package:e_commerce_ui/screens/home_screen/components/special_offers.dart';
import 'package:flutter/material.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            const HomeHeader(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            const DiscountBanner(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            const Category(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            const SpecialOffers(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            const PopularProducts(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
          ],
        ),
      ),
    );
  }
}

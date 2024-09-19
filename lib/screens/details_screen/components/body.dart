import 'package:e_commerce_ui/components/default_button.dart';
import 'package:e_commerce_ui/constants/size_config.dart';
import 'package:e_commerce_ui/models/product.dart';
import 'package:e_commerce_ui/screens/details_screen/components/product_description.dart';
import 'package:e_commerce_ui/screens/details_screen/components/product_image.dart';
import 'package:e_commerce_ui/screens/details_screen/components/top_rounded_container.dart';
import 'package:flutter/material.dart';

import 'color_dots_selector.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  press: () {},
                ),
                TopRoundedContainer(
                  color: const Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorDotsSelection(product: product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                            top: getProportionateScreenWidth(15),
                            bottom: getProportionateScreenWidth(40),
                          ),
                          child: DefaultButton(
                            text: "Add to Cart",
                            press: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../constants/size_config.dart';
import 'category_card.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": Icons.flash_on, "text": "Flash Deal"},
      {"icon": Icons.receipt, "text": "Bill"},
      {"icon": Icons.videogame_asset, "text": "Game"},
      {"icon": Icons.card_giftcard, "text": "Daily Gift"},
      {"icon": Icons.compass_calibration, "text": "More"},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
            (index) => CategoryCard(
              icon: categories[index]["icon"],
              text: categories[index]["text"],
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}

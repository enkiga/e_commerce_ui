import 'package:flutter/material.dart';

import '../../../constants/size_config.dart';
import '../../../constants/variables.dart';
import '../../../models/cart.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
    required this.cart,
  });

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: const TextStyle(fontSize: 16, color: Colors.black),
              maxLines: 2,
            ),
            Text.rich(
              TextSpan(
                text: "\$${cart.product.price}",
                style: const TextStyle(
                  color: kPrimaryColor,
                ),
                children: [
                  TextSpan(
                    text: " x${cart.numOfItems}",
                    style: const TextStyle(color: kPrimaryTextColor),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

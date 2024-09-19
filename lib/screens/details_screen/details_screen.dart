import 'package:e_commerce_ui/screens/details_screen/components/body.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      appBar: CustomAppBar(
        "${arguments.product.rating}",
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: AppBar(),
      ),
      body: Body(
        product: arguments.product,
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}

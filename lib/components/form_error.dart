import 'package:e_commerce_ui/constants/variables.dart';
import 'package:flutter/material.dart';

import '../constants/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    super.key,
    required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
            (index) => formErrorText(error: errors[index]),
      ),
    );
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        Icon(
          Icons.error,
          size: getProportionateScreenHeight(14),
          color: kPrimaryColor,
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(error),
      ],
    );
  }
}

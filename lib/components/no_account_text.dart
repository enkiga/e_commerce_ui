import 'package:flutter/material.dart';

import '../constants/size_config.dart';
import '../constants/variables.dart';
import '../screens/sign_up_screen/sign_up_screen.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account? ",
            style: TextStyle(fontSize: getProportionateScreenWidth(16))),
        GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            SignUpScreen.routeName,
          ),
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}

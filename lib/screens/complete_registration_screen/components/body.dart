import 'package:e_commerce_ui/constants/size_config.dart';
import 'package:flutter/material.dart';

import 'complete_registration_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text(
                "Complete Registration",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
              const Text(
                "Complete your details to continue",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              const CompleteRegistrationForm(),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Text(
                  "By continuing your confirm that you agree \nwith our Term and Condition",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(12),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

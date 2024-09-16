import "package:e_commerce_ui/constants/size_config.dart";
import "package:e_commerce_ui/screens/sign_up_screen/components/sign_up_form.dart";
import "package:flutter/material.dart";

import "../../../components/social_card.dart";

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.02,
            ),
            Text(
              "Register Account",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(28),
                color: Colors.black,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            const Text(
              "Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.06,
            ),
            const SignUpForm(),
            SizedBox(
              height: SizeConfig.screenHeight * 0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: 'assets/icons/facebook.svg',
                  press: () {},
                ),
                SocialCard(
                  icon: 'assets/icons/google.svg',
                  press: () {},
                ),
                SocialCard(
                  icon: 'assets/icons/twitter.svg',
                  press: () {},
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            const Text(
                "By continuing your confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

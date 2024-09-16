import 'package:e_commerce_ui/constants/size_config.dart';
import 'package:e_commerce_ui/constants/variables.dart';
import 'package:e_commerce_ui/screens/splash_screen/components/splash_content.dart';
import 'package:flutter/material.dart';

import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let's shop!",
      "image": "assets/images/Splash_1.png"
    },
    {
      "text":
          "We help people connect with store around United State of America",
      "image": "assets/images/Splash_2.png"
    },
    {
      "text": "We show the easy way to shop. Just stay at home with us",
      "image": "assets/images/Splash_3.png"
    },
    {
      "text": "We show the easy way to shop. Just stay at home with us",
      "image": "assets/images/Splash_4.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"]!,
                  text: splashData[index]["text"]!,
                ),
                itemCount: splashData.length,
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index)),
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                      text: 'Continue',
                      press: () {},
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : kSecondaryTextColor,
          borderRadius: BorderRadius.circular(3)),
    );
  }
}

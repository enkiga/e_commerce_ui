import 'package:flutter/widgets.dart';
import 'package:e_commerce_ui/screens/signin_screen/signin_screen.dart';
import 'package:e_commerce_ui/screens/splash_screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
};

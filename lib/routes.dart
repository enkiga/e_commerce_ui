import 'package:e_commerce_ui/screens/auth_success_screen/auth_success_screen.dart';
import 'package:e_commerce_ui/screens/cart_screen/cart_screen.dart';
import 'package:e_commerce_ui/screens/complete_registration_screen/complete_registration_screen.dart';
import 'package:e_commerce_ui/screens/details_screen/details_screen.dart';
import 'package:e_commerce_ui/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:e_commerce_ui/screens/home_screen/home_screen.dart';
import 'package:e_commerce_ui/screens/otp_screen/otp_screen.dart';
import 'package:e_commerce_ui/screens/sign_in_screen/sign_in_screen.dart';
import 'package:e_commerce_ui/screens/sign_up_screen/sign_up_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:e_commerce_ui/screens/splash_screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  AuthSuccessScreen.routeName: (context) => const AuthSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteRegistrationScreen.routeName: (context) =>
      const CompleteRegistrationScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
};

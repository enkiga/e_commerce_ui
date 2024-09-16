import 'package:e_commerce_ui/screens/auth_success_screen/components/body.dart';
import 'package:flutter/material.dart';

class AuthSuccessScreen extends StatelessWidget {
  const AuthSuccessScreen({super.key});

  static String routeName = "/auth_success";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text("Login Success"),
      ),
      body: const Body(),
    );
  }
}

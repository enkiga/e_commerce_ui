import 'package:e_commerce_ui/screens/complete_registration_screen/components/body.dart';
import 'package:flutter/material.dart';

class CompleteRegistrationScreen extends StatelessWidget {
  const CompleteRegistrationScreen({super.key});

  static String routeName = "/complete_registration";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Complete Registration"),
      ),
      body: const Body(),
    );
  }
}

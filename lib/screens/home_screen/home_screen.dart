import 'package:e_commerce_ui/components/custom_bottom_nav_bar.dart';
import 'package:e_commerce_ui/screens/home_screen/components/body.dart';
import 'package:flutter/material.dart';

import '../../enum.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}

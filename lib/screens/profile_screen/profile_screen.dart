import 'package:e_commerce_ui/screens/profile_screen/components/body.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_ui/constants/size_config.dart';

import '../../components/custom_bottom_nav_bar.dart';
import '../../enum.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profile'),
      ),
      body: const Body(),
      bottomNavigationBar: const CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}

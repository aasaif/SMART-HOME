import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smart_home_applications/pages/home_page.dart';
import 'package:smart_home_applications/pages/powerusage_page.dart';
import 'package:smart_home_applications/pages/smarthome_page.dart';
import 'package:smart_home_applications/storage/color_storage.dart';

class GoogleNavBar extends StatelessWidget {
  const GoogleNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: main2Color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 13,
          horizontal: 20,
        ),
        child: GNav(
          backgroundColor: main2Color,
          color: surface2,
          activeColor: main2Color,
          tabBackgroundColor: Colors.white,
          gap: 5,
          //onTabChange: (index) {},
          padding: const EdgeInsets.all(20),
          tabs: [
            GButton(
              icon: Icons.home_outlined,
              text: "Home",
              onPressed: () => Get.to(() => const HomePage()),
            ),
            GButton(
              icon: Icons.hexagon_outlined,
              text: "Smart",
              onPressed: () => Get.to(() => const SmartHomePage()),
            ),
            GButton(
              icon: Icons.incomplete_circle,
              text: "Usage",
              onPressed: () => Get.to(() => const UsagePage()),
            ),
            const GButton(
              icon: Icons.account_circle_outlined,
              text: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}

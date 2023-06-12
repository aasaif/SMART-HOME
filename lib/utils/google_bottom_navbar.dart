import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smart_home_applications/storage/color_storage.dart';

class GoogleNavBar extends StatelessWidget {
  const GoogleNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
          onTabChange: (index) {
            print(index);
          },
          padding: EdgeInsets.all(20),
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              text: "Home",
            ),
            GButton(
              icon: Icons.hexagon_outlined,
              text: "Smart",
            ),
            GButton(
              icon: Icons.incomplete_circle,
              text: "Usage",
            ),
            GButton(
              icon: Icons.account_circle_outlined,
              text: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}

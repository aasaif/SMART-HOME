import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smart_home_applications/storage/color_storage.dart';
import 'package:smart_home_applications/utils/fiChart.dart';
import 'package:smart_home_applications/utils/usage_lower_part.dart';
import 'package:smart_home_applications/utils/usage_upper_part.dart';

class UsagePage extends StatelessWidget {
  const UsagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: 845.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                height: 845.h,
                decoration: BoxDecoration(
                  color: Color(0xFF4D7480),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                //-----------------------
                child: UsageUpperPart(),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 1256.4.h,
                  decoration: BoxDecoration(
                    color: Color(0xFF4D7480),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 1256.7.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: UsageLowerPart(),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: main2Color,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45),
              topRight: Radius.circular(45),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 15,
          ),
          child: GNav(
            backgroundColor: main2Color,
            color: Colors.white,
            activeColor: Colors.amber,
            gap: 8,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
                //iconSize: 25,
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
              GButton(
                icon: Icons.account_box_outlined,
                text: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

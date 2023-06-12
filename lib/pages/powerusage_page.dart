import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smart_home_applications/storage/color_storage.dart';
import 'package:smart_home_applications/utils/fiChart.dart';
import 'package:smart_home_applications/utils/google_bottom_navbar.dart';
import 'package:smart_home_applications/utils/secondListTile.dart';
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
                    height: 1031.4.h,
                    decoration: BoxDecoration(
                      color: Color(0xFF4D7480),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 1031.7.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 40.h),
                        //text-------------------------------------
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Total Today",
                                    style: TextStyle(
                                      fontSize: 45.sp,
                                      color: textColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(width: 5.h),
                                  Container(
                                    height: 55.h,
                                    width: 55.w,
                                    decoration: BoxDecoration(
                                      color: main2Color,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '4',
                                        style: TextStyle(
                                          fontSize: 35.sp,
                                          color: white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "See All",
                                style: TextStyle(
                                  fontSize: 45.sp,
                                  color: main2Color,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.h),

                        Column(
                          children: [
                            SecondListTile(),
                            SecondListTile(),
                            SecondListTile(),
                            SecondListTile(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: GoogleNavBar());
  }
}

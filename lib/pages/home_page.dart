import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_applications/storage/color_storage.dart';
import 'package:smart_home_applications/utils/activeCard.dart';
import 'package:smart_home_applications/utils/customCard.dart';
import 'package:smart_home_applications/utils/customNavBar.dart';
import 'package:smart_home_applications/utils/google_bottom_navbar.dart';
import 'package:smart_home_applications/utils/roomsCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: 790.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                height: 790.h,
                decoration: const BoxDecoration(
                  color: Color(0xFF4D7480),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    //Row
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //text
                              SizedBox(height: 25.h),
                              Text(
                                "Good Morning,",
                                style: TextStyle(
                                  fontSize: 70.sp,
                                  color: white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              //text
                              Text(
                                "Kimberly Mastrangelo",
                                style: TextStyle(
                                  fontSize: 40.sp,
                                  color: textColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          //icon
                          Container(
                            height: 80.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(40.r),
                              ),
                            ),
                            child: Image.asset(
                              'icons/notifications.png',
                              color: textColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 28.h),

                    //Container
                    CustomCard(),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 1084.5.h,
                  decoration: BoxDecoration(
                    color: Color(0xFF4D7480),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 1084.6.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 35.h),
                      //text
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rooms",
                              style: TextStyle(
                                fontSize: 45.sp,
                                color: textColor,
                                fontWeight: FontWeight.w600,
                              ),
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
                      SizedBox(height: 30.h),
                      //card
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RoomsCard(
                              rcPercentageText: '19°c',
                              rcImage: 'images/livingroom-1.png',
                              rcNum: '5',
                              rcBigText: "Living Room",
                              rcSmallText: "devices",
                            ),
                            RoomsCard(
                              rcPercentageText: '12°c',
                              rcImage: 'images/bedroom-1.png',
                              rcNum: '8',
                              rcBigText: "Bed Room",
                              rcSmallText: "devices",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40.h),
                      //text

                      //text
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Active",
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
                                      '6',
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
                      SizedBox(height: 25.h),
                      //card
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ActiveCard(
                              acImage: 'images/air_conditioner.png',
                              acSmallText1: "Temperature",
                              acBigText1: "19°c",
                              acBigText2: "AC",
                              acSmallText2: "Living room",
                            ),
                            SizedBox(width: 20.w),
                            ActiveCard(
                              acImage: 'images/ceiling_lamp.png',
                              acSmallText1: "Colour",
                              acBigText1: "White",
                              acBigText2: "Lamp",
                              acSmallText2: "Dining room",
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 35.h),

                      //nav bar-----------------------------
                      /*Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomNavBar(),
                      ),
                      */
                      //--------------------------------------
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: GoogleNavBar(),
      ),
    );
  }
}

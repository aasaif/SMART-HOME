import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_applications/storage/color_storage.dart';
import 'package:smart_home_applications/utils/dropdown_button.dart';
import 'package:smart_home_applications/utils/firstListTile.dart';
import 'package:smart_home_applications/utils/google_bottom_navbar.dart';

class SmartHomePage extends StatelessWidget {
  const SmartHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: 350.h,
                decoration: BoxDecoration(color: surface2),
              ),
              Container(
                height: 350.h,
                decoration: BoxDecoration(
                  color: Color(0xFF4D7480),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20.h),
                    //SMART HOME TEXT and ICON
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Smart Home",
                            style: TextStyle(
                              fontSize: 75.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            height: 90.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(45.r),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Image.asset(
                                'icons/filter.png',
                                color: textColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25.h),
                    //DROPDOWN MENU----------
                    MyHomePage(),

                    //--------------------------------------
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 1525.4.h,
                  decoration: BoxDecoration(
                    color: Color(0xFF4D7480),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 1525.h,
                  decoration: BoxDecoration(
                    color: surface2,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 25.h),
                      //smart mode ttext
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
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
                      ),

                      //LIST TILE--------------------------
                      FirstListTile(
                        deviceName: "Smart Lamp",
                        roomNameday: "Dining Room | Tue Thu",
                        offOnImage: 'icons/on.png',
                        deviceImage: 'images/bulb-1.png',
                        startTime: "8 pm",
                        endTime: "8 am",
                      ),
                      FirstListTile(
                        deviceName: "Air Conditioner",
                        roomNameday: "Bed Room | Sun",
                        offOnImage: 'icons/off.png',
                        deviceImage: 'images/ac.png',
                        startTime: "10 pm",
                        endTime: "11 am",
                      ),
                      FirstListTile(
                        deviceName: "Smart Lamp",
                        roomNameday: "Bed Room 2 | Fri",
                        offOnImage: 'icons/off.png',
                        deviceImage: 'images/bulb-1.png',
                        startTime: "8 pm",
                        endTime: "8 am",
                      ),
                      FirstListTile(
                        deviceName: "Television",
                        roomNameday: "Living Room | Tue Thu",
                        offOnImage: 'icons/on.png',
                        deviceImage: 'images/tv.png',
                        startTime: "8 pm",
                        endTime: "8 am",
                      ),

                      //------------------------------------
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: surface2,
          child: GoogleNavBar(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_applications/storage/color_storage.dart';
import 'package:smart_home_applications/utils/diningroom_container1.dart';
import 'package:smart_home_applications/utils/firstListTile.dart';

class DiningRoomPage extends StatelessWidget {
  const DiningRoomPage({super.key});

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
                height: 1080.h,
                decoration: const BoxDecoration(
                  color: surface2,
                ),
              ),
              Container(
                height: 1080.h,
                decoration: const BoxDecoration(
                  color: Color(0xFF4D7480),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: Stack(
                  children: [
                    const DiningroomContainer1(),
                    Positioned(
                      top: 100,
                      right: 45,
                      child: Container(
                        height: 400.h,
                        width: 400.w,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(100)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.orangeAccent.withOpacity(.2),
                              offset: const Offset(4.0, 4.0),
                              blurRadius: 15.0,
                              spreadRadius: 5,
                            ),
                            BoxShadow(
                              color: Colors.amber.withOpacity(0.1),
                              offset: const Offset(-2.0, -2.0),
                              blurRadius: 55.0,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -18,
                      right: 40,
                      child: SizedBox(
                        height: 500.h,
                        width: 400.w,
                        child: Image.asset(
                          "images/hanging-lamp.png",
                          height: 100.h,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 1019.4.h,
                  decoration: const BoxDecoration(
                    color: Color(0xFF4D7480),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 1019.4.h,
                  decoration: const BoxDecoration(
                    color: surface2,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 70.h),
                      //text and icon

                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Schedule",
                                  style: TextStyle(
                                    fontSize: 45.sp,
                                    color: textColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 5.h),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 55.h,
                                    width: 55.w,
                                    decoration: BoxDecoration(
                                      color: main2Color,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '2',
                                        style: TextStyle(
                                          fontSize: 35.sp,
                                          color: white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 70.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.r),
                                ),
                              ),
                              child: Image.asset(
                                'icons/add.png',
                                color: textColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50.h),

                      //1st card
                      const FirstListTile(
                        deviceName: "Smart Lamp",
                        roomNameday: "Dining Room | Tue Thu",
                        offOnImage: 'icons/on.png',
                        deviceImage: 'images/bulb-1.png',
                        startTime: "8 pm",
                        endTime: "8 am",
                      ),
                      const FirstListTile(
                        deviceName: "Air Conditioner",
                        roomNameday: "Bed Room | Sun",
                        offOnImage: 'icons/off.png',
                        deviceImage: 'images/ac.png',
                        startTime: "10 pm",
                        endTime: "11 am",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_applications/storage/color_storage.dart';
import 'package:smart_home_applications/utils/diningroom_container1.dart';

class DiningRoomPage extends StatelessWidget {
  const DiningRoomPage({super.key});

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
                height: 1080.h,
                decoration: BoxDecoration(
                  color: surface2,
                ),
              ),
              Container(
                height: 1080.h,
                decoration: BoxDecoration(
                  color: Color(0xFF4D7480),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: Stack(
                  children: [
                    DiningroomContainer1(),
                    Positioned(
                      top: 100,
                      right: 45,
                      child: Container(
                        height: 400.h,
                        width: 400.w,
                        decoration: BoxDecoration(
                          //color: Colors.amberAccent.withOpacity(0.15),
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.orangeAccent.withOpacity(.2),
                              offset: Offset(4.0, 4.0),
                              blurRadius: 15.0,
                              spreadRadius: 5,
                            ),
                            BoxShadow(
                              color: Colors.amber.withOpacity(0.1),
                              offset: Offset(-2.0, -2.0),
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
                      child: Container(
                        height: 500.h,
                        width: 400.w,
                        //color: Colors.red,
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
                  decoration: BoxDecoration(
                    color: Color(0xFF4D7480),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 1019.4.h,
                  decoration: BoxDecoration(
                    color: surface2,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(70),
                    ),
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

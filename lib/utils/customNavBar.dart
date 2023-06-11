import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_applications/storage/color_storage.dart';
import 'package:smart_home_applications/utils/navBarButton.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Expanded(
        child: Container(
          height: 217.5.h,
          decoration: BoxDecoration(
            color: main2Color,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('icons/home fill.png'),
                      Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 45.sp,
                          color: main2Color,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                NavBarButton(navImage: 'icons/net.png'),
                NavBarButton(navImage: 'icons/pie.png'),
                NavBarButton(navImage: 'icons/user.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

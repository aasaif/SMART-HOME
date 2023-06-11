import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_applications/storage/color_storage.dart';
import 'package:smart_home_applications/utils/secondListTile.dart';

class UsageLowerPart extends StatelessWidget {
  const UsageLowerPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        SizedBox(height: 20.h),
        //card-------------------------
        SecondListTile(),
        SecondListTile(),
        SecondListTile(),
        SecondListTile(),
      ],
    );
  }
}

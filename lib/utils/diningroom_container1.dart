import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_home_applications/storage/color_storage.dart';
import 'package:smart_home_applications/utils/slider.dart';

class DiningroomContainer1 extends StatelessWidget {
  const DiningroomContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //TEXT BACK LAMP ---------
          SizedBox(height: 10.h),
          Row(
            children: [
              InkWell(
                onTap: () => Get.back(),
                child: Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      color: white,
                      size: 15,
                    ),
                    Text(
                      "Back",
                      style: TextStyle(
                        fontSize: 40.sp,
                        color: white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 230.w),
              Text(
                "Lamp",
                style: TextStyle(
                  fontSize: 65.sp,
                  color: white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),

          //TEXT DINING ROOM---------
          Text(
            "Dining Room",
            style: TextStyle(
              fontSize: 40.sp,
              color: white,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 70.h),

          //IMAGE OFF-----------
          Image.asset(
            "icons/on.png",
            height: 90.h,
            width: 150.w,
          ),

          //TEXT------------
          Row(
            children: [
              Text(
                "80",
                style: TextStyle(
                  fontSize: 100.sp,
                  color: white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(width: 10.w),
              Text(
                "%",
                style: TextStyle(
                  fontSize: 40.sp,
                  color: white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),

          //TEXT------------
          Text(
            "Brightness",
            style: TextStyle(
              fontSize: 40.sp,
              color: white,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            "Intensity  ",
            style: TextStyle(
              fontSize: 40.sp,
              color: white,
              fontWeight: FontWeight.w500,
            ),
          ),

          //ROW------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "images/bulb-2.png",
                height: 90.h,
                width: 70.w,
              ),
              const CustomSlider(),
              Image.asset(
                "images/bulb-1.png",
                height: 90.h,
                width: 70.w,
              ),
            ],
          ),
          SizedBox(height: 37.h),

          //Container
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              height: 1.h,
              width: 940.w,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 70.h),

          //TEXT------------
          Text(
            "Usages  ",
            style: TextStyle(
              fontSize: 40.sp,
              color: white,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 30.h),

          //TEXT ROW------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Use Today",
                style: TextStyle(
                  fontSize: 40.sp,
                  color: white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                children: [
                  Text(
                    "50  ",
                    style: TextStyle(
                      fontSize: 40.sp,
                      color: white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "watt",
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10.h),

          //ROW------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Use Week",
                style: TextStyle(
                  fontSize: 40.sp,
                  color: white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                children: [
                  Text(
                    "500  ",
                    style: TextStyle(
                      fontSize: 40.sp,
                      color: white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "kwh",
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10.h),

          //ROW------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Use Month",
                style: TextStyle(
                  fontSize: 40.sp,
                  color: white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                children: [
                  Text(
                    "5000 ",
                    style: TextStyle(
                      fontSize: 40.sp,
                      color: white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "kwh",
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

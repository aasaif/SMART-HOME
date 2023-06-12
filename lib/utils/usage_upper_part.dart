import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_applications/storage/color_storage.dart';
import 'package:smart_home_applications/utils/fiChart.dart';

class UsageUpperPart extends StatelessWidget {
  const UsageUpperPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        children: [
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Power Usage",
                style: TextStyle(
                  fontSize: 75.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
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
              ),
            ],
          ),
          SizedBox(height: 30.h),
          //--------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Usage this Week",
                style: TextStyle(
                  fontSize: 55.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Text(
                    "2500",
                    style: TextStyle(
                      fontSize: 60.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    "watt",
                    style: TextStyle(
                      fontSize: 45.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              //Kwh----
              Column(
                children: [
                  const Text('Kwh', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20.h),
                  const Text('200', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 40.h),
                  const Text('150', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 40.h),
                  const Text('100', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 40.h),
                  const Text('50', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 40.h),
                  const Text('0', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 70.h),
                ],
              ),
              SizedBox(width: 40.w),
              //graph----
              const FiChartPage(),
            ],
          ),
          //day-----
          Row(
            children: [
              const Text(
                'Day',
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 20.w),
              const Text('Fri', style: TextStyle(color: Colors.white)),
              SizedBox(width: 60.w),
              const Text('Sat', style: TextStyle(color: Colors.white)),
              SizedBox(width: 60.w),
              const Text('Sun', style: TextStyle(color: Colors.white)),
              SizedBox(width: 60.w),
              const Text('Mon', style: TextStyle(color: Colors.white)),
              SizedBox(width: 60.w),
              const Text('Tues', style: TextStyle(color: Colors.white)),
              SizedBox(width: 60.w),
              const Text('Wed', style: TextStyle(color: Colors.white)),
              SizedBox(width: 60.w),
              const Text('Thurs', style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}

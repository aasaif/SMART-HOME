import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_applications/storage/color_storage.dart';

class FirstListTile extends StatelessWidget {
  final String deviceName;
  final String roomNameday;
  final String offOnImage;
  final String deviceImage;
  final String startTime;
  final String endTime;
  const FirstListTile({
    super.key,
    required this.deviceName,
    required this.roomNameday,
    required this.offOnImage,
    required this.deviceImage,
    required this.startTime,
    required this.endTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 330.h,
        width: 900.w,
        decoration: const BoxDecoration(
          color: white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            //1st step
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        deviceName,
                        style: TextStyle(
                          fontSize: 50.sp,
                          color: textColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        roomNameday,
                        style: TextStyle(
                          fontSize: 40.sp,
                          color: textColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),

                  //onoff image
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      offOnImage,
                      height: 80.h,
                      width: 200.w,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            //2nd step
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  //light image
                  SizedBox(
                    height: 100.h,
                    width: 190.w,
                    child: Image.asset(
                      deviceImage,
                    ),
                  ),

                  //text
                  SizedBox(
                    width: 115.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "from",
                          style: TextStyle(
                            fontSize: 35.sp,
                            color: textColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          startTime,
                          style: TextStyle(
                            fontSize: 40.sp,
                            color: textColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 105.w),

                  //line
                  Container(
                    height: 150.h,
                    width: 1.w,
                    color: Colors.black87,
                  ),

                  //text
                  SizedBox(width: 110.w),
                  SizedBox(
                    width: 110.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "to",
                          style: TextStyle(
                            fontSize: 35.sp,
                            color: textColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          endTime,
                          style: TextStyle(
                            fontSize: 40.sp,
                            color: textColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //line
                  SizedBox(width: 32.w),
                  Container(
                    height: 150.h,
                    width: 1.w,
                    color: Colors.black54,
                  ),
                  SizedBox(width: 50.w),
                  //icon
                  Column(
                    children: [
                      //delete icon
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 70.h,
                          width: 70.w,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade100),
                            borderRadius: const BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                              'icons/delete.png',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),

                      //edit icon
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 70.h,
                          width: 70.w,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade100),
                            borderRadius: const BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                              'icons/edit.png',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

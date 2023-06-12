import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_applications/storage/color_storage.dart';

class SecondListTile extends StatelessWidget {
  final String deviceImage;
  final String deviceName;
  final String kwh;
  final String roomName;
  final String upDownImage;
  final String percentNum;
  final String unitAndDate;

  const SecondListTile({
    super.key,
    required this.deviceImage,
    required this.deviceName,
    required this.kwh,
    required this.roomName,
    required this.upDownImage,
    required this.percentNum,
    required this.unitAndDate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 205.h,
        width: 900.w,
        decoration: const BoxDecoration(
          color: surface2,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          children: [
            //logo------------------------------------------
            SizedBox(width: 20.w),
            Container(
              padding: const EdgeInsets.all(12),
              height: 150.h,
              width: 150.w,
              decoration: const BoxDecoration(
                color: white,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Image.asset(deviceImage),
            ),
            SizedBox(width: 40.w),

            Column(
              children: [
                //ROW1-----------------------------------------
                SizedBox(height: 15.h),
                Row(
                  children: [
                    Text(
                      deviceName,
                      style: TextStyle(
                        fontSize: 45.sp,
                        color: textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 80.w),
                    Row(
                      children: [
                        Text(
                          kwh,
                          style: TextStyle(
                            fontSize: 40.sp,
                            color: main2Color,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          "Kw/h",
                          style: TextStyle(
                            fontSize: 40.sp,
                            color: main2Color,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                  ],
                ),
                //ROW2-----------------------------------------
                Row(
                  children: [
                    Text(
                      roomName,
                      style: TextStyle(
                        fontSize: 40.sp,
                        color: textColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 50.w),
                    SizedBox(
                      //padding: EdgeInsets.all(5),
                      height: 40.h,
                      width: 40.w,
                      //color: Colors.amber,
                      child: Image.asset(upDownImage),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      percentNum,
                      style: TextStyle(
                        fontSize: 40.sp,
                        color: Colors.green,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),

                //ROW2-----------------------------------------
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      unitAndDate,
                      style: TextStyle(
                        fontSize: 35.sp,
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 380.w),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

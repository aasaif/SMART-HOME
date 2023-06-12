import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_applications/storage/color_storage.dart';

class SecondListTile extends StatelessWidget {
  const SecondListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 205.h,
        width: 900.w,
        decoration: BoxDecoration(
          color: surface2,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          children: [
            //logo------------------------------------------
            SizedBox(width: 20.w),
            Container(
              padding: EdgeInsets.all(12),
              height: 150.h,
              width: 150.w,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Image.asset('images/ac.png'),
            ),
            SizedBox(width: 40.w),

            Column(
              children: [
                //ROW1-----------------------------------------
                SizedBox(height: 15.h),
                Row(
                  children: [
                    Text(
                      "Wireless Speaker",
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
                          "1090",
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
                      "Kitchen - Living Room",
                      style: TextStyle(
                        fontSize: 40.sp,
                        color: textColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 50.w),
                    Container(
                      //padding: EdgeInsets.all(5),
                      height: 40.h,
                      width: 40.w,
                      //color: Colors.amber,
                      child: Image.asset('icons/up.png'),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "-100.2%",
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
                      "8 Unit | 12 Jam",
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

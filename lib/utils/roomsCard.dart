import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_applications/storage/color_storage.dart';

class RoomsCard extends StatelessWidget {
  final String rcPercentageText;
  final String rcImage;
  final String rcBigText;
  final String rcNum;
  final String rcSmallText;
  const RoomsCard({
    super.key,
    required this.rcPercentageText,
    required this.rcImage,
    required this.rcBigText,
    required this.rcNum,
    required this.rcSmallText,
  });

  @override
  Widget build(BuildContext context) {
    return
        //backgroundColor: surface2,
        Container(
      width: 430.w,
      height: 470.h,
      decoration: BoxDecoration(
        color: /*Colors.grey[300]*/ surface2,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        /*boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(2.0, 2.0),
            blurRadius: 10.0,
            spreadRadius: 2,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-2.0, -2.0),
            blurRadius: 10.0,
            spreadRadius: 2,
          ),
        ],*/
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            //tem text
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 70.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                    color: main2Color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      rcPercentageText,
                      style: TextStyle(
                        fontSize: 45.sp,
                        color: white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //image
            Container(
              height: 210.h,
              width: 230.w,
              child: Image.asset(rcImage),
            ),
            //big text
            Text(
              rcBigText,
              style: TextStyle(
                fontSize: 45.sp,
                color: textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            //small text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                    color: yellow,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      rcNum,
                      style: TextStyle(
                        fontSize: 45.sp,
                        color: Color(0xff404040),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Text(
                  rcSmallText,
                  style: TextStyle(
                    fontSize: 45.sp,
                    color: textColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

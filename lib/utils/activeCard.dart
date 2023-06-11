import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_applications/storage/color_storage.dart';

class ActiveCard extends StatelessWidget {
  final String acImage;
  final String acSmallText1;
  final String acBigText1;
  final String acBigText2;
  final String acSmallText2;
  const ActiveCard({
    super.key,
    required this.acImage,
    required this.acSmallText1,
    required this.acBigText1,
    required this.acBigText2,
    required this.acSmallText2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430.w,
      height: 340.h,
      decoration: BoxDecoration(
        color: main1,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          //image & text
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 200.h,
                  width: 200.h,
                  //color: Colors.amber,
                  child: Image.asset(acImage),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      acSmallText1,
                      style: TextStyle(
                        fontSize: 25.sp,
                        color: white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      acBigText1,
                      style: TextStyle(
                        fontSize: 45.sp,
                        color: white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //text & image
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      acBigText2,
                      style: TextStyle(
                        fontSize: 45.sp,
                        color: white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      acSmallText2,
                      style: TextStyle(
                        fontSize: 30.sp,
                        color: white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 80.h,
                  width: 140.h,
                  //color: white,
                  child: Image.asset('icons/off.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

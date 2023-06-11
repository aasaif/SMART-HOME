import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../storage/color_storage.dart';

class SmallCustomCard extends StatelessWidget {
  final String image;
  final String percentageText;
  final String weatherText;

  const SmallCustomCard({
    super.key,
    required this.image,
    required this.percentageText,
    required this.weatherText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 100,
      decoration: BoxDecoration(
        color: Color(0xFFe4ecef),
        borderRadius: BorderRadius.all(
          Radius.circular(30.r),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //icon
                Container(
                  height: 30,
                  width: 30,
                  child: Image.asset(image),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),

                //text
                Text(
                  percentageText,
                  style: TextStyle(
                    fontSize: 40.sp,
                    color: textColor,
                    fontWeight: FontWeight.w800,

                    //fontFamily: SF Pro Text,
                    //fontStyle: Semibold,
                  ),
                  //textAlign: TextAlign.start,
                ),
              ],
            ),
            //text
            Text(
              weatherText,
              style: TextStyle(
                fontSize: 40.sp,
                color: textColor,
                fontWeight: FontWeight.w400,

                //fontFamily: SF Pro Text,
                //fontStyle: Semibold,
              ),
              //textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}

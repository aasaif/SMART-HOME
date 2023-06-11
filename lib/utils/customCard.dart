import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_applications/storage/color_storage.dart';
import 'package:smart_home_applications/utils/smallCustomCard.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Container(
          padding: EdgeInsets.all(10),
          height: 530.h,
          width: 900.w,
          decoration: BoxDecoration(
            color: surface2,
            borderRadius: BorderRadius.all(
              Radius.circular(70.r),
            ),
          ),
          child: Column(
            children: [
              //Upper part
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //image
                    Container(
                      height: 150.h,
                      width: 150.w,
                      child: Image.asset('images/cloudy-1.png'),
                    ),
                    //text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "May 16, 2023 10:05 am",
                          style: TextStyle(
                            fontSize: 40.sp,
                            color: textColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Cloudy",
                          style: TextStyle(
                            fontSize: 45.sp,
                            color: textColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Jakarta, Indonesia",
                          style: TextStyle(
                            fontSize: 40.sp,
                            color: textColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    //temperature
                    Text(
                      "19°c",
                      style: TextStyle(
                        fontSize: 90.sp,
                        color: textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              //line
              SizedBox(height: 20.h),
              Container(
                height: 1.h,
                width: 780.w,
                color: textDisable,
              ),
              SizedBox(height: 20.h),
              //lower part
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SmallCustomCard(
                      image: 'icons/humidity.png',
                      percentageText: '97%',
                      weatherText: 'Humidity',
                    ),
                    SmallCustomCard(
                      image: 'icons/eyes.png',
                      percentageText: '7 km',
                      weatherText: 'Visibility',
                    ),
                    SmallCustomCard(
                      image: 'icons/wind.png',
                      percentageText: '3km/h',
                      weatherText: 'NE Wind',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

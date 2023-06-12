/*

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_applications/storage/color_storage.dart';

class SecondListTile extends StatelessWidget {
  const SecondListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 230.h,
        width: 900.w,
        decoration: BoxDecoration(
          color: surface2,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          children: [
            //logo------------------------------------------
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
            SizedBox(width: 30.w),

            //text-----------------------------------------
            Container(
              //height: 200.h,
              //width: 330.w,
              color: white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    "Wireless Speaker",
                    style: TextStyle(
                      fontSize: 40.sp,
                      color: textColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "kitchen - Living Room",
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: textColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "8 Unit | 12 Jam",
                    style: TextStyle(
                      fontSize: 35.sp,
                      color: textColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 70.w),
            //wind text-----------------------------------
            Container(
              //padding: EdgeInsets.all(10),
              //height: 200.h,
              //width: 250.w,
              color: white,

              child: Column(
                children: [
                  //row1
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      Text(
                        "1000",
                        style: TextStyle(
                          fontSize: 40.sp,
                          color: textColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        "Kw/h",
                        style: TextStyle(
                          fontSize: 35.sp,
                          color: textColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),

                  //row2
                  Row(
                    children: [
                      Container(
                        //padding: EdgeInsets.all(5),
                        height: 40.h,
                        width: 40.w,
                        color: Colors.amber,
                        child: Image.asset('icons/up.png'),
                      ),
                      Text(
                        "-100.2%",
                        style: TextStyle(
                          fontSize: 40.sp,
                          color: textColor,
                          fontWeight: FontWeight.w400,
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

//--------------------------------------------------------

/*
LineChart(
        LineChartData(
          minX: 0,
          maxX: 6,
          minY: 0,
          maxY: 4,
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 2),
                FlSpot(2, 3.2),
                FlSpot(3, 4.2),
                FlSpot(4, 3.2),
                FlSpot(5, 2.8),
                FlSpot(6, 2.9),
                FlSpot(7, 3.8),
              ],
            ),
          ],
        ),
      ),  
    */

    //-----------------------------------------------------
    /*
    import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChart extends StatelessWidget {
  const LineChart(LineChartData lineChartData, {super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 0,
        maxX: 4,
        minY: 0,
        maxY: 7,
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 2),
              FlSpot(2, 3.2),
              FlSpot(3, 4.2),
              FlSpot(4, 3.2),
              FlSpot(5, 2.8),
              FlSpot(6, 2.9),
              FlSpot(7, 3.8),
            ],
          ),
        ],
      ),
    );
  }
}
*/
//---------------------------------------------------------------

//DROPDOWN BUTTON ----------------
/*

import 'package:dropdown_button2/src/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_applications/storage/color_storage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> items = [
    'Living Room',
    'Dining Room',
    'Bed Room',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton2(
            isExpanded: true,
            hint: const Row(
              children: [
                /*Icon(
                  Icons.list,
                  size: 16,
                  color: Colors.white,
                ),
                */
                SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Text(
                    'Select Item',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value as String;
              });
            },
            buttonStyleData: ButtonStyleData(
              height: 160.h,
              width: 900.h,
              padding: const EdgeInsets.only(left: 14, right: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black26,
                ),
                color: Colors.white,
              ),
              //elevation: 2,
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.arrow_drop_down_sharp,
              ),
              iconSize: 40,
              iconEnabledColor: main2Color,
              iconDisabledColor: Colors.grey,
            ),
            dropdownStyleData: DropdownStyleData(
              maxHeight: 350.h,
              width: 880.w,
              padding: null,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.white,
              ),
              //elevation: 8,
              //offset: const Offset(-20, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: MaterialStateProperty.all<double>(6),
                thumbVisibility: MaterialStateProperty.all<bool>(true),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
              padding: EdgeInsets.only(left: 14, right: 14),
            ),
          ),
        ),
      ),
    );
  }
}

//----------------------------------------------
class DropdownButton extends StatelessWidget {
  //const DropdownButton({super.key});
  final List<String> items = [
    'Living Room',
    'Dining Room',
    'Bed Room',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      );

*/

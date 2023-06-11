import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiningRoom extends StatelessWidget {
  const DiningRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              //width: MediaQuery.of(context).size.width,
              height: /*MediaQuery.of(context).size.height / 2.2*/ 500.h,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            Container(
              //width: MediaQuery.of(context).size.width,
              height: /*MediaQuery.of(context).size.height / 2.2*/ 500.h,
              decoration: BoxDecoration(
                color: Color(0xFF4D7480),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                //width: MediaQuery.of(context).size.width,
                height: /*MediaQuery.of(context).size.height / 1.8*/ 1660.4.h,
                decoration: BoxDecoration(
                  color: Color(0xFF4D7480),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                //width: MediaQuery.of(context).size.width,
                height: /*MediaQuery.of(context).size.height / 1.8*/ 1661.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

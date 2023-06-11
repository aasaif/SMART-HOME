import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_applications/storage/color_storage.dart';

class NavBarButton extends StatelessWidget {
  final String navImage;
  const NavBarButton({super.key, required this.navImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 160.w,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Image.asset(navImage),
    );
  }
}

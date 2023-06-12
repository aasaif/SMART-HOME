import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_applications/pages/diningroom_page.dart';
import 'package:smart_home_applications/pages/home_page.dart';
import 'package:smart_home_applications/pages/powerusage_page.dart';
import 'package:smart_home_applications/pages/smarthome_page.dart';
import 'package:smart_home_applications/utils/dropdown_button.dart';
import 'package:smart_home_applications/utils/google_bottom_navbar.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(/*100*/ 1001, /*690*/ 2160),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: 'Smart Home App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: //const DiningroomContainer2()
                //const DiningRoomPage(),
                //const SmartHomePage(),
                //const MyHomePage(),
                //const GoogleNavBar(),
                //const FiChartPage(),
                //const UsagePage(),
                //const Practice(),
                const HomePage(),
            //CurvedContainer(),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_applications/pages/practice.dart';
import 'package:smart_home_applications/pages/usage_page.dart';
import 'package:smart_home_applications/utils/fiChart.dart';

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
          return MaterialApp(
            title: 'Smart Home App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: //const FiChartPage(),
                const UsagePage(),
            //const Practice(),
            //const HomePage(),
            //CurvedContainer(),
          );
        });
  }
}

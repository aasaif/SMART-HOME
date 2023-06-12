import 'package:get/get.dart';

import 'package:smart_home_applications/pages/home_page.dart';
import 'package:smart_home_applications/pages/powerusage_page.dart';
import 'package:smart_home_applications/pages/smarthome_page.dart';
import 'package:smart_home_applications/pages/diningroom_page.dart';

const String homePage = "/home-page";
const String diningRoomPage = "/dining-room-page";
const String usagePage = "/usage-page";
const String smartHomePage = "/smart-home-page";

List<GetPage> getpages = [
  GetPage(
    name: homePage,
    page: () => HomePage(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: diningRoomPage,
    page: () => DiningRoomPage(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: usagePage,
    page: () => UsagePage(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: smartHomePage,
    page: () => SmartHomePage(),
    transition: Transition.leftToRight,
  ),
];

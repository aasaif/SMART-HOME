import 'package:flutter/material.dart';
import 'package:smart_home_applications/storage/color_storage.dart';
import 'package:smart_home_applications/utils/firstListTile.dart';
import 'package:smart_home_applications/utils/fiChart.dart';
import 'package:smart_home_applications/utils/secondListTile.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: surface1,
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              FirstListTile(
                deviceName: "Smart Lamp",
                roomNameday: "Dining Room | Tue Thu",
                offOnImage: 'icons/on.png',
                deviceImage: 'images/bulb-1.png',
                startTime: "8 pm",
                endTime: "8 am",
              ),
              FirstListTile(
                deviceName: "Air Conditioner",
                roomNameday: "Bed Room | Sun",
                offOnImage: 'icons/off.png',
                deviceImage: 'images/ac.png',
                startTime: "10 pm",
                endTime: "11 am",
              ),
              SecondListTile(),
              //FiChartPage(),
            ],
          ),
        ),
      ),
    );
  }
}

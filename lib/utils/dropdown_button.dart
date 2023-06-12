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
    return DropdownButtonHideUnderline(
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
          width: 920.h,
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
    );
  }
}

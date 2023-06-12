import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
//create variable
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        children: [
          Slider(
            value: _currentValue,
            min: 0,
            max: 10,
            divisions: 5,
            //label: "hello",
            activeColor: Colors.white,
            inactiveColor: Colors.white,
            thumbColor: const Color(0xff9a7265),
            onChanged: (value) {
              setState(
                () {
                  _currentValue = value;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:shamsi_date/shamsi_date.dart';

class DataPickerExample extends StatefulWidget {
  const DataPickerExample({super.key});

  @override
  State<DataPickerExample> createState() => _DataPickerExampleState();
}

class _DataPickerExampleState extends State<DataPickerExample> {
  int _currentHorizontalIntValue = 10;

  int _currentYearValue = 0;
  int _currentMonthValue = 0;
  int _currentDayValue = 0;

  @override
  void initState() {
    super.initState();

    // to show current date on datePicker
    getCurrentJalaliDate();
  }

  void getCurrentJalaliDate() {
    DateTime dt = DateTime.now();
    Jalali j = dt.toJalali();
    Gregorian g = dt.toGregorian();
    _currentYearValue = j.year;
    _currentMonthValue = j.month;
    _currentDayValue = j.day;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 220,
              // height: 210,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.blue, width: 2)),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NumberPicker(
                    itemWidth: 70,
                    value: _currentYearValue,
                    minValue: 1350,
                    maxValue: 1450,
                    infiniteLoop: true,
                    textStyle: const TextStyle(fontSize: 15),
                    selectedTextStyle: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                    step: 1,
                    haptics: true,
                    onChanged: (value) =>
                        setState(() => _currentYearValue = value),
                  ),
                  NumberPicker(
                    itemWidth: 70,
                    value: _currentMonthValue,
                    minValue: 1,
                    maxValue: 12,
                    infiniteLoop: true,
                    textStyle: const TextStyle(fontSize: 15),
                    selectedTextStyle: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                    step: 1,
                    haptics: true,
                    onChanged: (value) =>
                        setState(() => _currentMonthValue = value),
                  ),
                  NumberPicker(
                    itemWidth: 70,
                    value: _currentDayValue,
                    minValue: 1,
                    maxValue: _currentMonthValue <= 6
                        ? 31
                        : (_currentMonthValue >= 7 && _currentMonthValue < 12)
                            ? 30
                            : 29,
                    infiniteLoop: true,
                    textStyle: const TextStyle(fontSize: 15),
                    selectedTextStyle: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                    step: 1,
                    haptics: true,
                    onChanged: (value) =>
                        setState(() => _currentDayValue = value),
                  ),
                ],
              ),
            ),
           const SizedBox(
              height: 5,
            ),

            NumberPicker(
              value: _currentHorizontalIntValue,
              minValue: 0,
              maxValue: 100,
              step: 10,
              itemHeight: 100,
              axis: Axis.horizontal,
              onChanged: (value) =>
                  setState(() => _currentHorizontalIntValue = value),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.black26),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

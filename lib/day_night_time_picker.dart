import 'package:day_night_time_picker/lib/constants.dart';
import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:flutter/material.dart';

class DayNightTimePickerPage extends StatefulWidget {
  const DayNightTimePickerPage({Key? key}) : super(key: key);

  @override
  State<DayNightTimePickerPage> createState() => _DayNightTimePickerPageState();
}

class _DayNightTimePickerPageState extends State<DayNightTimePickerPage> {
  // TimeOfDay _time = TimeOfDay.now().replacing(hour: 11, minute: 30);
  TimeOfDay _time = TimeOfDay.now();
  bool iosStyle = true;

  void onTimeChanged(TimeOfDay newTime) {
    setState(() {
      _time = newTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            //   child: SingleChildScrollView(
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: <Widget>[
            //         Text(
            //           "Popup Picker Style",
            //           style: Theme.of(context).textTheme.headline6,
            //         ),
            //         Text(
            //           _time.format(context),
            //           textAlign: TextAlign.center,
            //           style: TextStyle(color: Colors.black45 , fontSize: 35),
            //           // style: Theme.of(context).textTheme.headline1,
            //         ),
            //         const SizedBox(height: 10),
            //         TextButton(
            //           style: TextButton.styleFrom(
            //             backgroundColor: Theme.of(context).colorScheme.secondary,
            //           ),
            //           onPressed: () {
            //             Navigator.of(context).push(
            //               showPicker(
            //                 context: context,
            //                 value: _time,
            //                 onChange: onTimeChanged,
            //                 minuteInterval: MinuteInterval.FIVE,
            //                 // Optional onChange to receive value as DateTime
            //                 onChangeDateTime: (DateTime dateTime) {
            //                   // print(dateTime);
            //                   debugPrint("[debug datetime]:  $dateTime");
            //                 },
            //               ),
            //             );
            //           },
            //           child: const Text(
            //             "Open time picker",
            //             style: TextStyle(color: Colors.white),
            //           ),
            //         ),
            //         const SizedBox(height: 10),
            //         const Divider(),
            //         const SizedBox(height: 10),
            //         Text(
            //           "Inline Picker Style",
            //           style: Theme.of(context).textTheme.headline6,
            //         ),
            //         // Render inline widget
            //         createInlinePicker(
            //           elevation: 1,
            //           value: _time,
            //           onChange: onTimeChanged,
            //           minuteInterval: MinuteInterval.FIVE,
            //           iosStylePicker: iosStyle,
            //           minHour: 1,
            //           maxHour: 23,
            //           is24HrFormat: true,
            //         ),
            //         Text(
            //           "IOS Style",
            //           style: Theme.of(context).textTheme.bodyText1,
            //         ),
            //         Switch(
            //           value: iosStyle,
            //           onChanged: (newVal) {
            //             setState(() {
            //               iosStyle = newVal;
            //             });
            //           },
            //         )
            //       ],
            //     ),
            //   ),
            ),
      ),
    );
  }
}

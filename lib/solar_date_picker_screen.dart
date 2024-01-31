
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:solar_datepicker/solar_datepicker.dart';

class SolarDatePickerScreen extends StatefulWidget {
  const SolarDatePickerScreen({super.key});

  @override
  State<SolarDatePickerScreen> createState() => _SolarDatePickerScreenState();
}

class _SolarDatePickerScreenState extends State<SolarDatePickerScreen> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solar DatePicker Demo',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ISolarDatePickerScreen(title: 'Solar DatePicker Demo'),
    );
  }
}

class ISolarDatePickerScreen extends StatefulWidget {
  final String title;
  const ISolarDatePickerScreen({super.key , required this.title});

  @override
  State<ISolarDatePickerScreen> createState() => _ISolarDatePickerScreenState();
}

class _ISolarDatePickerScreenState extends State<ISolarDatePickerScreen> {
  DateTime? pickedDate;

  String? getDateStr() {
    if (pickedDate == null) {
      return null;
    }
    final f = Jalali.fromDateTime(pickedDate!).formatter;
    return '${f.yyyy}/${f.mm}/${f.dd}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          child: Text(getDateStr() ?? 'click to choose'),
          onPressed: () async {
            final picked = await showSolarDatePicker(
              context: context,
              textDirection: TextDirection.rtl,
              initialDate: pickedDate ?? DateTime.now(),
              locale: Locale('fa', 'IR'),
              firstDate: DateTime.now().subtract(Duration(days: 100 * 365)),
              lastDate: DateTime.now(),
              isPersian: true,
              selectableDayPredicate: (day) {
                return true;
              },
              headerContentColor: Colors.white,
              // initialDatePickerMode: SolarDatePickerMode.year,
              initialDatePickerMode: SolarDatePickerMode.day,
            );
            if (picked != null) {
              setState(() {
                pickedDate = picked;
              });
            }
          },
        ),
      ),
    );
  }
}

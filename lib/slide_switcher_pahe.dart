import 'package:flutter/material.dart';
import 'package:slide_switcher/slide_switcher.dart';

class SlideSwitcherPage extends StatefulWidget {
  const SlideSwitcherPage({super.key});

  @override
  State<SlideSwitcherPage> createState() => _SlideSwitcherPageState();
}

class _SlideSwitcherPageState extends State<SlideSwitcherPage> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SlideSwitcher(
              children: [
                Text('First'),
                Text('Second'),
                Text('third'),
              ],
              onSelect: (index) {},
              containerHeight: 40,
              containerWight: 350,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                SlideSwitcher(
                    children: [
                      Text('1st'),
                      Text('2nd'),
                    ],
                    onSelect: (index) {},
                    containerHeight: 350,
                    containerWight: 40,
                    direction: Axis.vertical),
                SizedBox(
                  width: 10,
                ),
                SlideSwitcher(
                  children: [
                    Text('1st'),
                    Text('2nd'),
                  ],
                  onSelect: (index) {},
                  containerHeight: 354,
                  containerWight: 40,
                  direction: Axis.vertical,
                  containerColor: Colors.red,
                  containerBorder: Border.all(color: Colors.black, width: 2),
                  slidersGradients: [
                    LinearGradient(colors: [Colors.blue, Colors.white])
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                SlideSwitcher(
                  children: [
                    Text('1st'),
                    Text('2nd'),
                  ],
                  onSelect: (index) {},
                  containerHeight: 354,
                  containerWight: 40,
                  direction: Axis.vertical,
                  containerColor: Colors.red,
                  slidersGradients: [
                    LinearGradient(colors: [Colors.blue, Colors.white])
                  ],
                ),
              ],
            ),
            SlideSwitcher(
              children: [
                Container(),
                Container(),
              ],
              onSelect: (index) {},
              isAllContainerTap: true,
              containerHeight: 30,
              containerWight: 60,
              containerColor: Colors.red,
              slidersColors: [Colors.yellow],
            ),
            Switch(
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
              activeColor: Colors.green,
              activeTrackColor: Colors.greenAccent,
              inactiveThumbColor: Colors.grey,
              inactiveTrackColor: Colors.grey.shade400,
            ),
          ],
        ),
      ),
    );
  }
}

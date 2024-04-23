import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class DelayDisplayPage extends StatefulWidget {
  const DelayDisplayPage({Key? key}) : super(key: key);

  @override
  State<DelayDisplayPage> createState() => _DelayDisplayPageState();
}

class _DelayDisplayPageState extends State<DelayDisplayPage> {
  final Duration initialDelay = Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("delay display"), centerTitle: true),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            DelayedDisplay(
              delay: initialDelay,
              child: Text(
                "Hello",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                  color: Colors.red,
                ),
              ),
            ),
            DelayedDisplay(
              delay: Duration(seconds: initialDelay.inSeconds + 1),
              child: Text(
                "World",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            DelayedDisplay(
              // slidingCurve: Curves.slowMiddle,
              delay: Duration(seconds: initialDelay.inSeconds + 2),
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "Subscribe",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DelayedDisplay(
              delay: Duration(seconds: initialDelay.inSeconds + 3),
              child: Text(
                "I already have an account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

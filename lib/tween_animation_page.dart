import 'package:flutter/material.dart';

class TweenAnimationPage extends StatefulWidget {
  const TweenAnimationPage({Key? key}) : super(key: key);

  @override
  State<TweenAnimationPage> createState() => _TweenAnimationPageState();
}

class _TweenAnimationPageState extends State<TweenAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tween animation builder"),
      ),
      body: Center(
        child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 1.0, end: 25),
            // from fontSize 1.0 to 30.0
            duration: const Duration(milliseconds: 2000),
            curve: Curves.linearToEaseOut,
            builder: (BuildContext context, double value, Widget? child) {
              return Text(
                "Its a tween animation",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: value),
              );
            }),
      ),
    );
  }
}

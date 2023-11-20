
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CuportinoSlidingSegmentedConrtolPage extends StatefulWidget {
  const CuportinoSlidingSegmentedConrtolPage({Key? key}) : super(key: key);

  @override
  State<CuportinoSlidingSegmentedConrtolPage> createState() => _CuportinoSlidingSegmentedConrtolPageState();
}

class _CuportinoSlidingSegmentedConrtolPageState extends State<CuportinoSlidingSegmentedConrtolPage> {
  int? _sliding = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: CupertinoSlidingSegmentedControl(

            children: const {
             0: Text("Text 0"),
             1: Text("Text 1"),
             2: Text("Text 2"),
            },
            groupValue:  _sliding,
            onValueChanged: (int? newValue){
              setState(() {
                _sliding = newValue;
              });
            }),
      )),
    );
  }
}

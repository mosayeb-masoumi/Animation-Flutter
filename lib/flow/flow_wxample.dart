
import 'package:flutter/material.dart';

class FlowExample extends StatefulWidget {
  const FlowExample({Key? key}) : super(key: key);

  @override
  State<FlowExample> createState() => _FlowExampleState();
}

class _FlowExampleState extends State<FlowExample> {
  @override
  Widget build(BuildContext context) {
    Size size  = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,


      ) ,
    );
  }
}





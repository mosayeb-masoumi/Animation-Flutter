import 'package:flutter/material.dart';

class WrapChipPage extends StatefulWidget {
  const WrapChipPage({Key? key}) : super(key: key);

  @override
  State<WrapChipPage> createState() => _WrapChipPageState();
}

class _WrapChipPageState extends State<WrapChipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(padding: EdgeInsets.all(10),
      child: Wrap(
        spacing: 5,  // horizontal spacing
        runSpacing: 10.0, // vertical spacing
        children: List.generate(10, (index) =>  Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.orange,
            child: Icon(Icons.person),
          ),
            label: index ==1 ?Text("Mapp Mapp Map"): Text("Mapp"))),
      ),)),
    );
  }
}

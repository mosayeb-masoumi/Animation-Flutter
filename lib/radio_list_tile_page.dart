import 'package:flutter/material.dart';

class RadioListTilePage extends StatefulWidget {
  const RadioListTilePage({Key? key}) : super(key: key);

  @override
  State<RadioListTilePage> createState() => _RadioListTilePageState();
}

List<String> options = ["Option 1", "Option 2"];

class _RadioListTilePageState extends State<RadioListTilePage> {
  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          RadioListTile(
              title: const Text("Option 1"),
              value: options[0],
              groupValue: currentOption,
              onChanged: (value) {
                setState(() {
                  currentOption = value.toString();
                });
              }),
          RadioListTile(
              title: const Text("Option 2"),
              value: options[1],
              groupValue: currentOption,
              onChanged: (value) {
                setState(() {
                  currentOption = value.toString();
                });
              }),
        ],
      )),
    );
  }
}

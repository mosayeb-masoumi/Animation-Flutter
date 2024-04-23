import 'package:flutter/material.dart';

class CheckboxListTilePage extends StatefulWidget {
  const CheckboxListTilePage({Key? key}) : super(key: key);

  @override
  State<CheckboxListTilePage> createState() => _CheckboxListTilePageState();
}

class _CheckboxListTilePageState extends State<CheckboxListTilePage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CheckboxListTile(
          title: Text("checkbox list tile"),
          subtitle: Text("this is a subtitle"),
          value: _isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue!;
            });
          },
          activeColor: Colors.orange,
          checkColor: Colors.white,
          tileColor: Colors.black12,
          controlAffinity:
              ListTileControlAffinity.leading, // to move checkbox to the right
          // tristate: true,
        ),
      ),
    );
  }
}

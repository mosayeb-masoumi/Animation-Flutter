import 'package:flutter/material.dart';

class ExpansionTilePage extends StatefulWidget {
  const ExpansionTilePage({Key? key}) : super(key: key);

  @override
  State<ExpansionTilePage> createState() => _ExpansionTilePageState();
}

class _ExpansionTilePageState extends State<ExpansionTilePage> {
  bool _customIcon = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          ExpansionTile(
            title: Text("Expansion Tile"),
            // trailing: Icon(_customIcon
            //     ? Icons.arrow_drop_down_circle
            //     : Icons.arrow_drop_down),
            children: [
              ListTile(
                title: Text("this is tile number 2"),
              )
            ],
            onExpansionChanged: (bool expanded) {
              // setState(() {
              //   _customIcon = expanded;
              // });
            },

            controlAffinity: ListTileControlAffinity.leading, // to move arrow to start of tile
          )
        ],
      ),
    ));
  }
}

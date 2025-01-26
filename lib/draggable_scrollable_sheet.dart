import 'package:flutter/material.dart';

class DraggableScrollableSheetPage extends StatefulWidget {
  const DraggableScrollableSheetPage({Key? key}) : super(key: key);

  @override
  State<DraggableScrollableSheetPage> createState() =>
      _DraggableScrollableSheetPageState();
}

class _DraggableScrollableSheetPageState
    extends State<DraggableScrollableSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DraggableScrollableSheet(
          // initialChildSize: 0.3, // Take 30% of screen height initially
          // minChildSize: 0.1, // Minimum size to take 10% of screen height
          // maxChildSize: 0.8, // Maximum size to take 80% of screen height
          builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          color: Colors.orangeAccent,
          child: ListView.builder(
              controller: scrollController,
              itemCount: 25,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Item $index"),
                );
              }),
        );
      }),
    );
  }
}

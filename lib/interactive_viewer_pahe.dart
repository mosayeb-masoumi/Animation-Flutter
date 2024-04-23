import 'package:flutter/material.dart';

class InteractiveViewerPage extends StatefulWidget {
  const InteractiveViewerPage({Key? key}) : super(key: key);

  @override
  State<InteractiveViewerPage> createState() => _InteractiveViewerPageState();
}

class _InteractiveViewerPageState extends State<InteractiveViewerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("flutter app"),
      ),
      body: InteractiveViewer(
          boundaryMargin: EdgeInsets.all(double.infinity),
          child: Scaffold(
            appBar: AppBar(title: Text("Interactive viewer")),
            body: Center(
              child: Text("gesture zoom in zoom out inner page"),
            ),
          )),
    );
  }
}

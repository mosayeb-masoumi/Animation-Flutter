import 'package:flutter/material.dart';

class LayoutBuilderPortraitLandscape extends StatefulWidget {
  const LayoutBuilderPortraitLandscape({Key? key}) : super(key: key);

  @override
  State<LayoutBuilderPortraitLandscape> createState() =>
      _LayoutBuilderPortraitLandscapeState();
}

class _LayoutBuilderPortraitLandscapeState
    extends State<LayoutBuilderPortraitLandscape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //     child: LayoutBuilder(
        //     builder: (BuildContext context, BoxConstraints constraints) {
        //   if (constraints.maxWidth > 600) {
        //     // landscape
        //     return Center(
        //       child: Image.asset("assets/images/beach.jpeg"),
        //     );
        //   } else {
        //     //portrait
        //
        //     return const Center(
        //       child: Text("landscape the app will show another content"),
        //     );
        //   }
        // })

        child: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return const Center(
              child: Text("this is portrait mode"),
            );
          } else {
            return const Center(
              child: Text("this is landscape mode"),
            );
          }
        }),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LongPressDraggablePage extends StatefulWidget {
  LongPressDraggablePage({Key? key}) : super(key: key);

  @override
  State<LongPressDraggablePage> createState() => _LongPressDraggablePageState();
}

class _LongPressDraggablePageState extends State<LongPressDraggablePage> {
  Offset _offset = const Offset(200, 250);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  "      Long press the image and drag anywhere",
                )),
            LayoutBuilder(builder: (context, constraints) {
              return Stack(
                children: [
                  Positioned(
                      left: _offset.dx,
                      top: _offset.dy,
                      child: LongPressDraggable(
                        feedback: Image.asset(
                          "assets/images/beach.jpeg",
                          height: 200,
                          color: Colors.orangeAccent,
                          colorBlendMode: BlendMode.colorBurn,
                        ),
                        child: Image.asset(
                          "assets/images/beach.jpeg",
                          height: 200,
                        ),
                        onDragEnd: (details) {
                          setState(() {
                            double adjustment =
                                MediaQuery.of(context).size.height -
                                    constraints.maxHeight;
                            _offset = Offset(details.offset.dx,
                                details.offset.dy - adjustment);
                          });
                        },
                      )),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}

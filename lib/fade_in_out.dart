
import 'package:flutter/material.dart';

class FadeInOut extends StatefulWidget {
  const FadeInOut({Key? key}) : super(key: key);

  @override
  State<FadeInOut> createState() => _FadeInOutState();
}

class _FadeInOutState extends State<FadeInOut> {

  bool _visible = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedOpacity(
              // If the widget is visible, animate to 0.0 (invisible).
              // If the widget is hidden, animate to 1.0 (fully visible).
              opacity: _visible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 1000),
              // The green box must be a child of the AnimatedOpacity widget.
              child: Container(
                width: 200.0,
                height: 200.0,
                color: Colors.green,
              ),
            ),

            ElevatedButton(onPressed: (){
              setState(() {
                _visible = !_visible;
              });
            }, child: Text("click"))
          ],
        ),
      ),
    );
  }


}

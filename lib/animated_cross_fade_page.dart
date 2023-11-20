import 'package:flutter/material.dart';

class AnimatedCrossFadePage extends StatefulWidget {
  const AnimatedCrossFadePage({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadePage> createState() => _AnimatedCrossFadePageState();
}

class _AnimatedCrossFadePageState extends State<AnimatedCrossFadePage> {
  bool _bool = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedCrossFade(
                firstChild: Container(
                  width: 200,
                  height: 200,
                  // color: Colors.red,
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //       image: AssetImage('assets/images/image4.jpg'),
                  //       fit: BoxFit.cover),
                  // ),
                  child: Image(
                      image: AssetImage("assets/images/image4.jpg"),
                      fit: BoxFit.fill),
                ),
                secondChild: Container(
                  width: 200,
                  height: 200,
                  // color: Colors.green,
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //       image: AssetImage('assets/images/image3.jpg'),
                  //       fit: BoxFit.cover),
                  // ),
                  child: Image(
                    image: AssetImage("assets/images/image3.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                crossFadeState: _bool
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 3000)),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _bool = !_bool;
                  });
                },
                child: Text("change"))
          ],
        ),
      )),
    );
  }
}

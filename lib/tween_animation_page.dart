import 'package:flutter/material.dart';

class TweenAnimationPage extends StatefulWidget {
  const TweenAnimationPage({Key? key}) : super(key: key);

  @override
  State<TweenAnimationPage> createState() => _TweenAnimationPageState();
}

class _TweenAnimationPageState extends State<TweenAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tween animation builder"),
      ),
      body: Center(
        child: Column(
          children: [
            const Example1(),
            SizedBox(
              height: 100,
            ),
            const Example2()
          ],
        ),
      ),
    );
  }
}

class Example1 extends StatelessWidget {
  const Example1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 1.0, end: 25),
        // from fontSize 1.0 to 30.0
        duration: const Duration(milliseconds: 2000),
        curve: Curves.linearToEaseOut,
        builder: (BuildContext context, double value, Widget? child) {
          return Text(
            "Its a tween animation",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: value),
          );
        });
  }
}

class Example2 extends StatefulWidget {
  const Example2({super.key});

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2> {
  var _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          TweenAnimationBuilder<double>(
            tween: Tween(begin: 1, end: _scale),
            duration: const Duration(milliseconds: 600),
            builder: (context, value, child) {
              return Transform.scale(
                scale: value,
                child: child,
              );
            },
            child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  "assets/images/image4.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Slider.adaptive(
              value: _scale,
              max: 5,
              min: 1,
              onChanged: (value) {
                setState(() {
                  _scale = value;
                });
              })
        ],
      ),
    );
  }
}

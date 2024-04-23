import 'package:animated_size_and_fade/animated_size_and_fade.dart';
import 'package:flutter/material.dart';

class AnimateSizeFadePage extends StatefulWidget {
  const AnimateSizeFadePage({Key? key}) : super(key: key);

  @override
  State<AnimateSizeFadePage> createState() => _AnimateSizeFadePageState();
}

class _AnimateSizeFadePageState extends State<AnimateSizeFadePage> {
  late bool toggle;
  @override
  void initState() {
    super.initState();
    toggle = false;
  }

  @override
  Widget build(BuildContext context) {
    var widget1 = Container(
      key: ValueKey("first"),
      color: Colors.blue,
      width: 200.0,
      child: const Text(
        "And I promise you I'll never desert you again because after 'Salome' "
        "we'll make another picture and another picture. "
        "You see, this is my life! "
        "It always will be! Nothing else! "
        "Just us, the cameras, and those wonderful people out there in the dark!...",
      ),
    );

    var widget2 = Container(
      key: ValueKey("second"),
      color: Colors.red,
      width: 200.0,
      child: const Text(
        "I am ready for my closeup.",
      ),
    );

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    toggle = !toggle;
                  });
                },
                child: Text("toggle")),
            SizedBox(
              height: 30,
            ),
            const Text("Some text above."),
            AnimatedSizeAndFade(
              child: toggle ? widget1 : widget2,
              fadeDuration: const Duration(milliseconds: 500),
              sizeDuration: const Duration(milliseconds: 500),
            ),
            const Text("Some text below."),
          ],
        ),
      ),
    );
  }
}

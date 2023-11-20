import 'package:flutter/material.dart';

class AnimatedIconPage extends StatefulWidget {
  const AnimatedIconPage({Key? key}) : super(key: key);

  @override
  State<AnimatedIconPage> createState() => _AnimatedIconPageState();
}

class _AnimatedIconPageState extends State<AnimatedIconPage>
    with TickerProviderStateMixin {
  bool _isPaly = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: GestureDetector(
          onTap: () {
            if (_isPaly == false) {
              _controller.forward();
              _isPaly = true;
              // setState(() {
              //   _isPaly = true;
              // });

            } else {
              _controller.reverse();
              _isPaly = false;
              // setState(() {
              //   _isPaly = false;
              // });

            }
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.pause_play,
            // icon: AnimatedIcons.menu_home,
            color: _isPaly ? Colors.green : Colors.red,
            progress: _controller,
            size: 100,
          ),
        ),
      )),
    );
  }
}

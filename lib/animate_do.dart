import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class AnimateDo extends StatefulWidget {
  const AnimateDo({Key? key}) : super(key: key);

  @override
  State<AnimateDo> createState() => _AnimateDoState();
}

class _AnimateDoState extends State<AnimateDo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeInLeft(
                    child: const Square(color: Colors.red),
                    duration: Duration(seconds: 6)),
                FadeInUp(
                    child: const Square(color: Colors.red),
                    duration: Duration(seconds: 6)),
                FadeInDown(
                    child: const Square(color: Colors.red),
                    duration: Duration(seconds: 6)),
                FadeInRight(
                    child: const Square(color: Colors.red),
                    duration: Duration(seconds: 6)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeInLeft(
                    child: const Square(color: Colors.green),
                    duration: Duration(seconds: 6)),
                FadeInLeft(
                    child: const Square(color: Colors.green),
                    duration: Duration(seconds: 6)),
                FadeInLeft(
                    child: const Square(color: Colors.green),
                    duration: Duration(seconds: 6)),
                FadeInLeft(
                    child: const Square(color: Colors.green),
                    duration: Duration(seconds: 6)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeInDownBig(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        color: Colors.blue),
                    duration: Duration(seconds: 4)),
                // FadeOutUpBig(child:  Container(width: MediaQuery.of(context).size.width, height:50, color: Colors.blue), duration: Duration(seconds: 4) ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeInDownBig(
                    child: const Square(color: Colors.blue),
                    duration: Duration(seconds: 6)),
                FadeInDownBig(
                    child: const Square(color: Colors.blue),
                    duration: Duration(seconds: 6)),
                FadeInDownBig(
                    child: const Square(color: Colors.blue),
                    duration: Duration(seconds: 6)),
                FadeInDownBig(
                    child: const Square(color: Colors.blue),
                    duration: Duration(seconds: 6)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeInUpBig(
                    child: const Square(color: Colors.pink),
                    duration: Duration(seconds: 6)),
                FadeInUpBig(
                    child: const Square(color: Colors.pink),
                    duration: Duration(seconds: 6)),
                FadeInUpBig(
                    child: const Square(color: Colors.pink),
                    duration: Duration(seconds: 6)),
                FadeInUpBig(
                    child: const Square(color: Colors.pink),
                    duration: Duration(seconds: 6)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SlideInLeft(
                    child: const Square(color: Colors.grey),
                    duration: Duration(seconds: 6)),
                FadeOut(
                    child: const Square(color: Colors.grey),
                    duration: Duration(seconds: 6)),
                FadeOut(
                    child: const Square(color: Colors.grey),
                    duration: Duration(seconds: 6)),
                SlideInRight(
                    child: const Square(color: Colors.grey),
                    duration: Duration(seconds: 6)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BounceInLeft(
                    child: const Square(color: Colors.purple),
                    duration: Duration(seconds: 6)),
                BounceInUp(
                    child: const Square(color: Colors.purple),
                    duration: Duration(seconds: 6)),
                BounceInDown(
                    child: const Square(color: Colors.purple),
                    duration: Duration(seconds: 6)),
                BounceInRight(
                    child: const Square(color: Colors.purple),
                    duration: Duration(seconds: 6)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ZoomIn(
                  child: const Square(color: Colors.black87),
                  duration: Duration(seconds: 6),
                ),
                ZoomOut(
                  child: const Square(color: Colors.black87),
                  duration: Duration(seconds: 6),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spin(
                  child: const Square(color: Colors.blueGrey),
                  duration: Duration(seconds: 6),
                ),
                Spin(
                  child: const Square(color: Colors.blueGrey),
                  duration: Duration(seconds: 6),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Bounce(
                  child: const Square(color: Colors.yellow),
                  duration: Duration(seconds: 3),
                ),
                BounceInDown(
                  child: const Square(color: Colors.yellow),
                  duration: Duration(seconds: 3),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Roulette(
                  child: const Square(color: Colors.deepPurple),
                  duration: Duration(seconds: 6),
                ),
                Roulette(
                  child: const Square(color: Colors.deepPurple),
                  duration: Duration(seconds: 6),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Dance(
                  child: const Square(color: Colors.black26),
                  duration: Duration(seconds: 6),
                ),
                Dance(
                  child: const Square(color: Colors.black26),
                  duration: Duration(seconds: 6),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Square extends StatelessWidget {
  final Color color;
  const Square({Key? key, required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: color,
    );
  }
}

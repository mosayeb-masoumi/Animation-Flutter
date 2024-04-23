import 'package:flutter/material.dart';
import 'package:flutter_animation/transition/second_page.dart';
import 'package:page_transition/page_transition.dart';

class TransitionPage extends StatefulWidget {
  const TransitionPage({Key? key}) : super(key: key);

  @override
  State<TransitionPage> createState() => _TransitionPageState();
}

class _TransitionPageState extends State<TransitionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Page Transition'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              ElevatedButton(
                child: Text('Fade Second Page - Default'),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: SecondPage(),
                      isIos: true,
                      duration: Duration(milliseconds: 600),
                      reverseDuration: Duration(milliseconds: 600),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: Text('Left To Right Transition Second Page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      duration: Duration(milliseconds: 600),
                      reverseDuration: Duration(milliseconds: 600),
                      type: PageTransitionType.leftToRight,
                      child: SecondPage(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child:
                    Text('Right To Left Transition Second Page Ios SwipeBack'),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      duration: Duration(milliseconds: 600),
                      reverseDuration: Duration(milliseconds: 600),
                      type: PageTransitionType.rightToLeft,
                      isIos: true,
                      child: SecondPage(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: Text('Left To Right with Fade Transition Second Page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      duration: Duration(milliseconds: 600),
                      reverseDuration: Duration(milliseconds: 600),
                      type: PageTransitionType.leftToRightWithFade,
                      alignment: Alignment.topCenter,
                      child: SecondPage(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: Text('Right To Left Transition Second Page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      duration: Duration(milliseconds: 600),
                      reverseDuration: Duration(milliseconds: 600),
                      type: PageTransitionType.leftToRight,
                      child: SecondPage(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: Text('Right To Left with Fade Transition Second Page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      duration: Duration(milliseconds: 600),
                      reverseDuration: Duration(milliseconds: 600),
                      type: PageTransitionType.rightToLeftWithFade,
                      child: SecondPage(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: Text('Top to Bottom Second Page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      duration: Duration(milliseconds: 600),
                      reverseDuration: Duration(milliseconds: 600),
                      curve: Curves.linear,
                      type: PageTransitionType.topToBottom,
                      child: SecondPage(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: Text('Bottom to Top Second Page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      duration: Duration(milliseconds: 600),
                      reverseDuration: Duration(milliseconds: 600),
                      curve: Curves.linear,
                      type: PageTransitionType.bottomToTop,
                      child: SecondPage(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: Text('Scale Transition Second Page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.scale,
                      alignment: Alignment.topCenter,
                      duration: Duration(milliseconds: 600),
                      reverseDuration: Duration(milliseconds: 600),
                      isIos: true,
                      child: SecondPage(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: Text('Rotate Transition Second Page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      duration: Duration(milliseconds: 600),
                      reverseDuration: Duration(milliseconds: 600),
                      curve: Curves.bounceOut,
                      type: PageTransitionType.rotate,
                      alignment: Alignment.topCenter,
                      child: SecondPage(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: Text('Size Transition Second Page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      duration: Duration(milliseconds: 600),
                      reverseDuration: Duration(milliseconds: 600),
                      alignment: Alignment.bottomCenter,
                      curve: Curves.bounceOut,
                      type: PageTransitionType.size,
                      child: SecondPage(),
                    ),
                  );
                },
              ),

              // ElevatedButton(
              //   child: Text('Bottom to Top Pop'),
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       PageTransition(
              //           alignment: Alignment.bottomCenter,
              //           curve: Curves.easeInOut,
              //           duration: Duration(milliseconds: 600),
              //           reverseDuration: Duration(milliseconds: 600),
              //           type: PageTransitionType.bottomToTopPop,
              //           child: SecondPage(),
              //           // childCurrent: this
              //       ),
              //     );
              //   },
              // ),
              // ElevatedButton(
              //   child: Text('PushNamed With arguments'),
              //   onPressed: () {
              //     Navigator.pushNamed(
              //       context,
              //       "/second",
              //       arguments: "with Arguments",
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

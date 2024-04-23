import 'dart:math';

import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';

class CircleMenuPage extends StatefulWidget {
  const CircleMenuPage({Key? key}) : super(key: key);

  @override
  State<CircleMenuPage> createState() => _CircleMenuPageState();
}

class _CircleMenuPageState extends State<CircleMenuPage> {
  GlobalKey<CircularMenuState> key1 = GlobalKey<CircularMenuState>();
  GlobalKey<CircularMenuState> key2 = GlobalKey<CircularMenuState>();
  GlobalKey<CircularMenuState> key3 = GlobalKey<CircularMenuState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // body: CircularMenu(
        //   alignment: Alignment.bottomCenter,
        //   startingAngleInRadian: 1.25 * pi,
        //   endingAngleInRadian: 1.75 * pi,
        //   backgroundWidget: Center(
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: <Widget>[
        //         MaterialButton(
        //           onPressed: () {
        //             key.currentState?.forwardAnimation();
        //           },
        //           color: Colors.pink,
        //           shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(15)),
        //           padding: const EdgeInsets.all(15),
        //           child: Text(
        //             'forward',
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 24,
        //             ),
        //           ),
        //         ),
        //         MaterialButton(
        //           onPressed: () {
        //             key.currentState?.reverseAnimation();
        //           },
        //           shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(15)),
        //           padding: const EdgeInsets.all(15),
        //           color: Colors.pink,
        //           child: Text(
        //             'reverse',
        //             style: TextStyle(
        //               color: Colors.white,
        //               fontSize: 24,
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        //   key: key,
        //   items: [
        //     CircularMenuItem(
        //       icon: Icons.home,
        //       onTap: () {},
        //       color: Colors.green,
        //       iconColor: Colors.white,
        //     ),
        //     CircularMenuItem(
        //       icon: Icons.search,
        //       onTap: () {},
        //       color: Colors.orange,
        //       iconColor: Colors.white,
        //     ),
        //     CircularMenuItem(
        //       icon: Icons.settings,
        //       onTap: () {},
        //       color: Colors.deepPurple,
        //       iconColor: Colors.white,
        //     ),
        //   ],
        // ),

        body: SafeArea(
      child: MultiCircularMenu(
          backgroundWidget: Center(
            child: Text(
              "Flutter Circular Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          menus: [
            CircularMenu(
                key: key1,
                radius: 80,
                toggleButtonColor: Colors.pink,
                alignment: Alignment.bottomLeft,
                items: [
                  CircularMenuItem(
                    onTap: () {
                      // key2.currentState?.forwardAnimation(); // to open menu
                      key1.currentState?.reverseAnimation(); // to close menu
                      print('tapped');
                    },
                    icon: Icons.search,
                    color: Colors.blue,
                  ),
                  CircularMenuItem(
                    onTap: () {
                      key1.currentState?.reverseAnimation(); // to close menu
                      print('tapped');
                    },
                    icon: Icons.home,
                    color: Colors.grey,
                  ),
                  CircularMenuItem(
                    onTap: () {
                      key1.currentState?.reverseAnimation(); // to close menu
                      print('tapped');
                    },
                    icon: Icons.settings,
                    color: Colors.green,
                  ),
                ]),
            CircularMenu(
                key: key2,
                toggleButtonColor: Colors.deepPurpleAccent,
                alignment: Alignment.bottomRight,
                items: [
                  CircularMenuItem(
                    onTap: () {
                      // key2.currentState?.forwardAnimation(); // to open menu
                      key2.currentState?.reverseAnimation(); // to close menu
                      print('tapped');
                    },
                    icon: Icons.save,
                    color: Colors.teal,
                  ),
                  CircularMenuItem(
                    onTap: () {
                      key2.currentState?.reverseAnimation(); // to close menu
                      print('tapped');
                    },
                    icon: Icons.filter,
                    color: Colors.amber,
                  ),
                  CircularMenuItem(
                    onTap: () {
                      key2.currentState?.reverseAnimation(); // to close menu
                      print('tapped');
                    },
                    icon: Icons.star_border,
                    color: Colors.lightGreen,
                  ),
                ]),
            CircularMenu(
                key: key3,
                radius: 70,
                toggleButtonSize: 25,
                toggleButtonIconColor: Colors.red,
                toggleButtonColor: Colors.green,

                // animation curve in forward
                // curve: Curves.bounceOut,
                curve: Curves.fastLinearToSlowEaseIn,
                // animation curve in reverse
                reverseCurve: Curves.fastOutSlowIn,
                animationDuration: const Duration(milliseconds: 1000),
                alignment: Alignment.topCenter,
                items: [
                  CircularMenuItem(
                    enableBadge: true,
                    badgeColor: Colors.amber,
                    badgeLabel: '3',
                    badgeRadius: 12,
                    badgeTextColor: Colors.white,
                    badgeRightOffet: 0,
                    badgeTopOffet: 0,
                    onTap: () {
                      // key2.currentState?.forwardAnimation(); // to open menu
                      key3.currentState?.reverseAnimation(); // to close menu
                      print('tapped');
                    },
                    icon: Icons.save,
                    color: Colors.teal,
                  ),
                  CircularMenuItem(
                    onTap: () {
                      key3.currentState?.reverseAnimation(); // to close menu
                      print('tapped');
                    },
                    icon: Icons.filter,
                    color: Colors.amber,
                  ),
                  CircularMenuItem(
                    onTap: () {
                      key3.currentState?.reverseAnimation(); // to close menu
                      print('tapped');
                    },
                    icon: Icons.star_border,
                    color: Colors.lightGreen,
                  ),
                ]),
          ]),
    ));
  }
}


import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class BottomBarConvexScreen extends StatefulWidget {
  const BottomBarConvexScreen({super.key});

  @override
  State<BottomBarConvexScreen> createState() => _BottomBarConvexScreenState();
}

class _BottomBarConvexScreenState extends State<BottomBarConvexScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar.badge({0: '99+', 1: Icons.assistant_photo, 2: Colors.redAccent},
        activeColor: Colors.greenAccent,
        color: Colors.yellow,
        // backgroundColor: Colors.purple,
        badgeColor: Colors.redAccent,
        badgeTextColor: Colors.white,
        shadowColor: Colors.blueGrey,
        gradient: LinearGradient(colors: [
          Colors.lightBlue,
          Colors.green,
        ]),
        elevation: 20,
        initialActiveIndex: 2,

        // top: -10,
        // height: 54,

        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}

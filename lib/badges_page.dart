import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class BadgesPage extends StatefulWidget {
  const BadgesPage({Key? key}) : super(key: key);

  @override
  State<BadgesPage> createState() => _BadgesPageState();
}

class _BadgesPageState extends State<BadgesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            example1(),
            example2(),
          ],
        ),
      ),
    );
  }

  Widget example2() {
    return badges.Badge(
      position: badges.BadgePosition.topEnd(top: -10, end: -12),
      showBadge: true,
      ignorePointer: false,
      onTap: () {},
      badgeContent: const Icon(Icons.check, color: Colors.white, size: 10),
      badgeAnimation: const badges.BadgeAnimation.rotation(
        animationDuration: Duration(seconds: 1),
        colorChangeAnimationDuration: Duration(seconds: 1),
        loopAnimation: false,
        curve: Curves.fastOutSlowIn,
        colorChangeAnimationCurve: Curves.easeInCubic,
      ),
      badgeStyle: badges.BadgeStyle(
        shape: badges.BadgeShape.square,
        badgeColor: Colors.blue,
        padding: const EdgeInsets.all(5),
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(color: Colors.white, width: 2),
        borderGradient: const badges.BadgeGradient.linear(
            colors: [Colors.red, Colors.black]),
        badgeGradient: const badges.BadgeGradient.linear(
          colors: [Colors.blue, Colors.yellow],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        elevation: 0,
      ),
      child: Text('Badge'),
    );
  }

  Widget example1() {
    return badges.Badge(
      badgeStyle: const badges.BadgeStyle(
        elevation: 10.0,
        badgeColor: Colors.blue,
        padding: EdgeInsets.all(7),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
        badgeGradient: badges.BadgeGradient.linear(
            colors: [Colors.yellowAccent, Colors.blue]),

        borderSide: BorderSide(
          color: Colors.red,
          width: 2,
        ),
        // shape: badges.BadgeShape.instagram
        // shape: badges.BadgeShape.twitter
        // shape: badges.BadgeShape.square
        shape: badges.BadgeShape.circle,
      ),
      position: badges.BadgePosition.topEnd(top: -10, end: -12),
      badgeContent: const Text(
        '3',
        style: TextStyle(color: Colors.white),
      ),
      child: const Icon(
        Icons.settings,
        size: 40,
      ),
    );
  }
}

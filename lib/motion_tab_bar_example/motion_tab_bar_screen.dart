import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionBadgeWidget.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

class MotionTabBarScreen extends StatefulWidget {
  const MotionTabBarScreen({super.key});

  @override
  State<MotionTabBarScreen> createState() => _MotionTabBarScreenState();
}

class _MotionTabBarScreenState extends State<MotionTabBarScreen>
    with TickerProviderStateMixin {
  // TabController? _tabController;
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();

    //// Use normal tab controller
    // _tabController = TabController(
    //   initialIndex: 1,
    //   length: 4,
    //   vsync: this,
    // );

    //// use "MotionTabBarController" to replace with "TabController", if you need to programmatically change the tab
    _motionTabBarController = MotionTabBarController(
      initialIndex: 1,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    // _tabController!.dispose();
    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: TabBarView(
          physics: const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
          controller: _motionTabBarController,
          children: <Widget>[
            MainPageContentComponent(title: "Dashboard Page", controller: _motionTabBarController!),
            MainPageContentComponent(title: "Home Page", controller: _motionTabBarController!),
            MainPageContentComponent(title: "Profile Page", controller: _motionTabBarController!),
            MainPageContentComponent(title: "Settings Page", controller: _motionTabBarController!),
          ]
      ),


      bottomNavigationBar: buildMotionTabBar(),
    );
  }

  MotionTabBar buildMotionTabBar() {
    return MotionTabBar(
      controller: _motionTabBarController,
      initialSelectedTab: "Home",
      useSafeArea: true,
      // default: true, apply safe area wrapper
      labels: const ["Dashboard", "Home", "Profile", "Settings"],
      icons: const [
        Icons.dashboard,
        Icons.home,
        Icons.people_alt,
        Icons.settings
      ],

      // optional badges, length must be same with labels
      badges: [
        // Default Motion Badge Widget
        const MotionBadgeWidget(
          text: '10+',
          textColor: Colors.white, // optional, default to Colors.white
          color: Colors.red, // optional, default to Colors.red
          size: 18, // optional, default to 18
        ),

        // custom badge Widget
        Container(
          color: Colors.black,
          padding: const EdgeInsets.all(2),
          child: const Text(
            '48',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),

        // allow null
        null,

        // Default Motion Badge Widget with indicator only
        const MotionBadgeWidget(
          isIndicator: true,
          color: Colors.red, // optional, default to Colors.red
          size: 5, // optional, default to 5,
          show: true, // true / false
        ),
      ],
      tabSize: 50,
      tabBarHeight: 55,
      textStyle: const TextStyle(
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      tabIconColor: Colors.blue[600],
      tabIconSize: 28.0,
      tabIconSelectedSize: 26.0,
      tabSelectedColor: Colors.blue[900],
      tabIconSelectedColor: Colors.white,
      tabBarColor: Colors.white,
      onTabItemSelected: (int value) {
        setState(() {
          _motionTabBarController!.index = value;
        });
      },
    );
  }
}


class MainPageContentComponent extends StatelessWidget {
  const MainPageContentComponent({
    required this.title,
    required this.controller,
    Key? key,
  }) : super(key: key);

  final String title;
  final MotionTabBarController controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 50),
          const Text('Go to "X" page programmatically'),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => controller.index = 0,
            child: const Text('Dashboard Page'),
          ),
          ElevatedButton(
            onPressed: () => controller.index = 1,
            child: const Text('Home Page'),
          ),
          ElevatedButton(
            onPressed: () => controller.index = 2,
            child: const Text('Profile Page'),
          ),
          ElevatedButton(
            onPressed: () => controller.index = 3,
            child: const Text('Settings Page'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TabbarCustomizedScreen extends StatefulWidget {
  const TabbarCustomizedScreen({super.key});

  @override
  State<TabbarCustomizedScreen> createState() => _TabbarCustomizedScreenState();
}

class _TabbarCustomizedScreenState extends State<TabbarCustomizedScreen> with SingleTickerProviderStateMixin  {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // Number of tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Stretch to full width
          children: [
            SizedBox(height: 16),
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
               padding: EdgeInsets.all(3),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab, // important to remove space between tabbar and container
                padding: EdgeInsets.zero,
                isScrollable: false,
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 0),
                dividerColor: Colors.transparent,
                controller: _tabController,
                indicator: BoxDecoration(
                  color: Colors.redAccent, // Background color for the selected tab
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),

                unselectedLabelStyle: TextStyle(
                  color: Colors.black
                ),
                labelStyle: TextStyle(
                  color: Colors.white
                ),

                tabs: const [
                  Tab(
                    child: Center(child: Text('Tab 1')),
                  ),
                  Tab(
                    child: Center(child: Text('Tab 2')),
                  ),
                  Tab(
                    child: Center(child: Text('Tab 3')),
                  ),

                ],
              ),
            ),

            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  Center(child: Text('Content for Tab 1')),
                  Center(child: Text('Content for Tab 2')),
                  Center(child: Text('Content for Tab 3')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

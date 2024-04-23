import 'package:flutter/material.dart';

import 'custom_scroll_example1.dart';
import 'custom_scroll_example2.dart';
import 'custom_scroll_example3.dart';
import 'custom_scroll_example4.dart';

class CustomScrollViewExamples extends StatelessWidget {
  const CustomScrollViewExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CustomScrollExample1()),
                );
              },
              child: Text("Example 1")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CustomScrollExample2()),
                );
              },
              child: Text("Example 2")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CustomScrollExample3()),
                );
              },
              child: Text("Example 3")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CustomScrollExample4()),
                );
              },
              child: Text("Example 4")),
        ],
      ),
    );
  }
}

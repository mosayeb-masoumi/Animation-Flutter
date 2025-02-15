import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPageIndicatorScreen extends StatefulWidget {
  const SmoothPageIndicatorScreen({super.key});

  @override
  State<SmoothPageIndicatorScreen> createState() =>
      _SmoothPageIndicatorScreenState();
}

class _SmoothPageIndicatorScreenState extends State<SmoothPageIndicatorScreen> {
  final controller = PageController(viewportFraction: 0.9, keepPage: true);
  final int pageCount = 4; // Total number of pages

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
           pageSnapping: true,
            controller: controller,
            itemCount: pageCount , // One extra page for the infinite effect,
            itemBuilder: (context, index) {
              return Container(
                width: size.width,
                height: size.height,
                color: index == 0
                    ? Colors.red
                    : index == 1
                        ? Colors.blue
                        : index == 2
                            ? Colors.green
                            : Colors.pinkAccent,
                child: Center(
                  child: Text("Page $index"),
                ),
              );
            },
            onPageChanged: (value) {
            },


          ),
          Positioned(
            bottom: 10,
            child: SizedBox(
              width: size.width,
              child: Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  effect: const WormEffect(
                    dotHeight: 16,
                    dotWidth: 16,
                    type: WormType.thinUnderground,
                  ),
                  onDotClicked: (index) {
                    controller.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

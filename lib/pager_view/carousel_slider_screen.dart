import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderScreen extends StatefulWidget {
  const CarouselSliderScreen({super.key});

  @override
  State<CarouselSliderScreen> createState() => _CarouselSliderScreenState();
}

class _CarouselSliderScreenState extends State<CarouselSliderScreen> {
  List<int> pages = [0, 1, 2, 3];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
                items: pages
                    .map((e) => Container(
                          width: MediaQuery.sizeOf(context).width,
                          height: 200,
                          color: e == 0
                              ? Colors.red
                              : e == 1
                                  ? Colors.blue
                                  : e == 2
                                      ? Colors.green
                                      : Colors.pinkAccent,
                          child: Center(
                            child: Text("Page $e"),
                          ),
                        ))
                    .toList(),
                options: CarouselOptions(
                  initialPage: 0,
                  autoPlay: true,
                  autoPlayInterval: const Duration(milliseconds: 2000),
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (value , _){
                    setState(() {
                      _currentPage = value;
                    });
                  }
                ),
            ),
            buildCarouselIndicator()
          ],
        ),
      ),
    );
  }

  buildCarouselIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for(int i = 0; i < pages.length ; i++)
          Container(
            margin: EdgeInsets.all(5),
            width: i == _currentPage? 7: 5,
            height: i == _currentPage? 7: 5,
            decoration: BoxDecoration(
              color:  i == _currentPage? Colors.black : Colors.grey,
              shape: BoxShape.circle
            ),
          )
      ],
    );
  }
}

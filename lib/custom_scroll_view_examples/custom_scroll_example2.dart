
import 'package:flutter/material.dart';

class CustomScrollExample2 extends StatefulWidget {
  const CustomScrollExample2({super.key});

  @override
  State<CustomScrollExample2> createState() => _CustomScrollExample2State();
}

class _CustomScrollExample2State extends State<CustomScrollExample2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200, // Set the height of the header when expanded

            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  // Add the background image
                  // Image.network("https://images.unsplash.com/photo-1469474968028-56623f02e42e?q=40",
                  Image.asset(
                    "assets/images/image1.jpg",
                    fit: BoxFit.cover,
                  ),

                  // Add the overlay with opacity
                  Container(
                    color: Colors.black.withOpacity(0.3),
                  ),

                  // Add the title with scaling and fading effect
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, bottom: 16),
                      child: TweenAnimationBuilder<double>(
                        tween: Tween<double>(begin: 1.0, end: 0.0),
                        duration: Duration(milliseconds: 500),
                        builder: (BuildContext context, double value,
                            Widget? child) {
                          return Transform.scale(
                            scale: 1 + value, // Scale factor for the title
                            child: Opacity(
                              opacity: 1 - value, // Scale factor for the title
                              child: Text(
                                "Parallel Header",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),

            floating: true,
            // pinned: true,// when pinned true , collapsed appbar will appear

            // Other properties like pinned, floating, elevation, etc.
            // can be customized as needed
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: 20, // Number of items in the list
                      (context, index) {
                    return ListTile(
                      title: Text('Item $index'),
                    );
                  }))
        ],
      ),
    );
  }
}

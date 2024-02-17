
import 'package:circle_list/circle_list.dart';
import 'package:flutter/material.dart';

class CircleListMenuPage extends StatefulWidget {
  const CircleListMenuPage({super.key});

  @override
  State<CircleListMenuPage> createState() => _CircleListMenuPageState();
}

class _CircleListMenuPageState extends State<CircleListMenuPage> {

  List<String> imgPaths= [
    'assets/images/apple2.png',
    'assets/images/beach.jpeg',
    'assets/images/card_bg.jpg',
    'assets/images/city.jpeg',
    'assets/images/image1.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg',
    'assets/images/photo_eraser.png',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child:Center(
          child: CircleList(

            origin: Offset(0, 0),
            children: imgPaths.map((imgPaths){

              return GestureDetector(
                onTap: (){ },
                child: Container(
                  width: 70,
                    height:70,
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: Image.asset(imgPaths , fit: BoxFit.fill,))),
              );
            }).toList(),
            centerWidget: GestureDetector(
              onTap: () { },
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(70)),
                  child: Image.asset("assets/images/apple2.png", scale: 1.30,)),
            ),
          ),
        ),
      ),
    );
  }
}

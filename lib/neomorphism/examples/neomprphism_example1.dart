
import 'package:flutter/material.dart';

class NeomorphismExample1 extends StatefulWidget {
  const NeomorphismExample1({Key? key}) : super(key: key);

  @override
  State<NeomorphismExample1> createState() => _NeomorphismExample1State();
}

class _NeomorphismExample1State extends State<NeomorphismExample1> {

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTapDown: (TapDownDetails details) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (TapUpDetails details) {
        setState(() {
          isPressed = false;
        });
      },

      child: Container(
        padding: EdgeInsets.all(50),
         decoration: BoxDecoration(
           color: Colors.grey[300],
           borderRadius: BorderRadius.circular(10),
           boxShadow: [
             BoxShadow(
               color: Colors.grey.shade500,
               offset: Offset(4 , 4),
               blurRadius: 15,
               spreadRadius: isPressed? 5:1
             ),

             BoxShadow(
                 color: Colors.white,
                 offset: Offset(-4 , -4),
                 blurRadius: 15,
                 spreadRadius: 1
             )
           ]
         ),

         child: Text("Press me" ,style: TextStyle(color: isPressed?Colors.black54: Colors.black26 ,fontWeight: FontWeight.bold),)
      ),
    );
  }
}

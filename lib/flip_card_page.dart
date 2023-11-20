import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class FlipCardPage extends StatefulWidget {
  const FlipCardPage({Key? key}) : super(key: key);

  @override
  State<FlipCardPage> createState() => _FlipCardPageState();
}

class _FlipCardPageState extends State<FlipCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flip card"),),
      body: Center(
        child: FlipCard(

          fill: Fill.fillBack, // Fill the back side of the card to make in the same size as the front.
          // direction: FlipDirection.HORIZONTAL, // default
          direction: FlipDirection.VERTICAL, // default
          front: Container(
            width: 300,
            height: 300,

            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(10)
            ),
            
            child: Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Front (click me)', style: TextStyle(color: Colors.white , fontSize: 20)),
                ElevatedButton(onPressed: (){}, child: Text("click me"))
              ],
            )),
          ),
          back: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10)
            ),

            child: Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Back (click me)' , style: TextStyle(color: Colors.white , fontSize: 20),),
                ElevatedButton(onPressed: (){}, child: Text("click me"))
              ],
            ) ,),
          ),
        ),
      )
    );
  }
}

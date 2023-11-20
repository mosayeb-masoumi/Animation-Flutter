import 'package:flutter/material.dart';

class AnimatedDefaultTextStylePage extends StatefulWidget {
  const AnimatedDefaultTextStylePage({Key? key}) : super(key: key);

  @override
  State<AnimatedDefaultTextStylePage> createState() => _AnimatedDefaultTextStylePageState();
}

class _AnimatedDefaultTextStylePageState extends State<AnimatedDefaultTextStylePage> {

  bool _first = true;
  double _fontSize = 70;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              height: 120,
              child: AnimatedDefaultTextStyle(
                  child: Text("Mosayeb"),
                  style: TextStyle(
                    color: _color,
                    fontSize: _fontSize,
                    fontWeight: FontWeight.bold
                  ),
                  duration: Duration(milliseconds: 300)
              ),
            ),

            TextButton(onPressed: (){
              setState(() {
                _fontSize = _first? 70 : 40;
                _color = _first? Colors.blue : Colors.red;
                _first = !_first;
              });
            }, child: Text("Switch"))
          ],
        ),
      ),
    );
  }
}
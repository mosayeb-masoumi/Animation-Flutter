import 'package:flutter/material.dart';

class ShakeTextFieldScreen extends StatefulWidget {
  const ShakeTextFieldScreen({super.key});

  @override
  State<ShakeTextFieldScreen> createState() => _ShakeTextFieldScreenState();
}

class _ShakeTextFieldScreenState extends State<ShakeTextFieldScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shake TextField Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Textfield shaked when enter more than 6 character"),
          Center(
            child: Container(margin: EdgeInsets.all(20), child: ShakeTextField()),
          ),
        ],
      ),
    );
  }
}

class ShakeTextField extends StatefulWidget {
  @override
  _ShakeTextFieldState createState() => _ShakeTextFieldState();
}

class _ShakeTextFieldState extends State<ShakeTextField>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  TextEditingController _textFieldController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 50),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void shake() {
    // _controller.forward(from: 0.0);  // shake once

    // shake twice
    _controller.reset();
    _controller.forward(from: 0.0).whenComplete(() {
      _controller.reverse().whenComplete(() {
        _controller.forward(from: 0.0);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(_controller.value * 10, 0),
              child: TextField(
                controller: _textFieldController,
                decoration: InputDecoration(
                  hintText: 'Enter text',
                  errorText: _textFieldController.text.length > 6 ? 'Error: more then 6 character':"", // Set error message here
                ),
                style: TextStyle(color: _textFieldController.text.length <= 6 ? Colors.black :Colors.red),
                onChanged: (value){
                  setState(() {});
                  if(value.length >6){
                    shake();
                  }
                },
              ),
            );
          },
        ),

        ElevatedButton(onPressed: (){
          shake();
        }, child: Text("shake"))
      ],
    );
  }
}

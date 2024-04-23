import 'package:flutter/material.dart';

class IndexedStackPage extends StatefulWidget {
  const IndexedStackPage({Key? key}) : super(key: key);

  @override
  State<IndexedStackPage> createState() => _IndexedStackPageState();
}

class _IndexedStackPageState extends State<IndexedStackPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: Text("0")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: Text("1")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  child: Text("2"))
            ],
          ),
          SizedBox(
            height: 5,
          ),
          IndexedStack(
            index: index,
            children: [
              Center(
                child: Image.asset("assets/images/beach.jpeg"),
              ),
              Center(
                child: Image.asset("assets/images/city.jpeg"),
              ),
              Center(
                child: Image.asset("assets/images/photo_eraser.png"),
              ),
            ],
          ),
          Text(
              "click on each button show diffrent image (clean code)  IndextedStack")
        ],
      )),
    );
  }
}

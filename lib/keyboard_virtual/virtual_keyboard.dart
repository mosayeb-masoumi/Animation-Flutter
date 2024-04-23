import 'package:flutter/material.dart';

class VirtualKeyboard extends StatefulWidget {
  const VirtualKeyboard({super.key});

  @override
  State<VirtualKeyboard> createState() => _VirtualKeyboardState();
}

class _VirtualKeyboardState extends State<VirtualKeyboard> {
  String resultNumber = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Virtual keybord"),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.green.shade200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              resultNumber,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
              // wrap container with material to show inkwell splash effect when click
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 300,
                height: 400,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    // color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Expanded(child: buildRow("7", "8", "9", size)),
                    buildHorizontalDivider(size),
                    Expanded(child: buildRow("4", "5", "6", size)),
                    buildHorizontalDivider(size),
                    Expanded(child: buildRow("1", "2", "3", size)),
                    buildHorizontalDivider(size),
                    Expanded(child: buildRow("Reset", "0", "Back", size))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildRow(
      String leftNumber, String middleNumber, String rightNumber, Size size) {
    return Row(
      children: [
        //left number
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: () {
              if (leftNumber != "Reset") {
                setState(() {
                  resultNumber +=
                      leftNumber; // Adding a letter 'A' to the string
                });
              } else {
                setState(() {
                  resultNumber = "";
                });
              }
            },
            child: Center(
              child: Text(leftNumber),
            ),
          ),
        ),

        //divider
        leftNumber == "7"
            ? buildTopDivider(size)
            : (leftNumber == "4" || leftNumber == "1")
                ? buildMiddleDivider(size)
                : buildBottomDivider(size),

        // middle number
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: () {
              setState(() {
                resultNumber +=
                    middleNumber; // Adding a letter 'A' to the string
              });
            },
            child: Center(
              child: Text(middleNumber),
            ),
          ),
        ),

        //divider
        leftNumber == "7"
            ? buildTopDivider(size)
            : (leftNumber == "4" || leftNumber == "1")
                ? buildMiddleDivider(size)
                : buildBottomDivider(size),

        //right number
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: () {
              if (rightNumber != "Back") {
                setState(() {
                  resultNumber +=
                      rightNumber; // Adding a letter 'A' to the string
                });
              } else {
                if (resultNumber.trim().isNotEmpty) {
                  setState(() {
                    resultNumber = resultNumber.substring(
                        0, resultNumber.length - 1); // Remove last character
                  });
                }
              }
            },
            child: Center(
              child: Text(rightNumber),
            ),
          ),
        )
      ],
    );
  }

  Widget buildHorizontalDivider(Size size) {
    return Container(
      width: size.width,
      height: 1,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.white10,
            Colors.black12,
            Colors.black26,
            Colors.black26,
            Colors.black26,
            Colors.black26,
            Colors.black12,
            Colors.white10,
          ],
        ),
      ),
    );
  }

  Widget buildTopDivider(Size size) {
    return Container(
      width: 1,
      height: size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white10,
            Colors.black12,
            Colors.black26,
            Colors.black26,
          ],
        ),
      ),
    );
  }

  Widget buildBottomDivider(Size size) {
    return Container(
      width: 1,
      height: size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.white10,
            Colors.black12,
            Colors.black26,
            Colors.black26,
          ],
        ),
      ),
    );
  }

  Widget buildMiddleDivider(Size size) {
    return Container(
      width: 1,
      height: size.height,
      color: Colors.black26,
    );
  }
}

import 'package:flutter/material.dart';

class VirtualKeyboardCleanScreen extends StatefulWidget {
  const VirtualKeyboardCleanScreen({super.key});

  @override
  State<VirtualKeyboardCleanScreen> createState() =>
      _VirtualKeyboardCleanScreenState();
}

class _VirtualKeyboardCleanScreenState
    extends State<VirtualKeyboardCleanScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Virtual keyboard"),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.green.shade200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterVirtualKeyboard(
                width: 300,
                height: 400,
                showResult: true,
                resultTextStyle: const TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                resultFunction: (value) {
                  print(value);
                },
                obscureResult: true,
                showDivider: true,
                // dividerColor: Colors.red,
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                backgroundColor: Colors.white,
                backgroundRadius: 20),
          ],
        ),
      ),
    );
  }
}

class FlutterVirtualKeyboard extends StatefulWidget {
  final double? width;
  final double? height;
  final bool? showResult;
  final Function(String value)? resultFunction;
  final bool? obscureResult;
  final bool? showDivider;
  final Color? dividerColor;
  final TextStyle? textStyle;
  final TextStyle? resultTextStyle;
  final Color? backgroundColor;
  final double? backgroundRadius;

  const FlutterVirtualKeyboard({
    super.key,
    this.width,
    this.height,
    this.showResult = true,
    this.resultFunction,
    this.obscureResult = false,
    this.showDivider = true,
    this.dividerColor,
    this.textStyle,
    this.resultTextStyle,
    this.backgroundColor,
    this.backgroundRadius,
  });

  @override
  State<FlutterVirtualKeyboard> createState() => _FlutterVirtualKeyboardState();
}

class _FlutterVirtualKeyboardState extends State<FlutterVirtualKeyboard> {
  String resultNumber = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Visibility(
          visible: widget.showResult!,
          child: Text(
              widget.obscureResult == true
                  ? obscureString(resultNumber)
                  : resultNumber,
              style: widget.resultTextStyle),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Material(
          // wrap container with material to show inkwell splash effect when click
          color: widget.backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(widget.backgroundRadius ?? 0),
          child: Container(
            width: widget.width ?? 300,
            height: widget.height ?? 400,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Expanded(
                    child: buildRow("7", "8", "9", size, widget.dividerColor)),
                (widget.showDivider == null || widget.showDivider == true)
                    ? buildHorizontalDivider(size, widget.dividerColor)
                    : const SizedBox.shrink(),
                Expanded(
                    child: buildRow("4", "5", "6", size, widget.dividerColor)),
                (widget.showDivider == null || widget.showDivider == true)
                    ? buildHorizontalDivider(size, widget.dividerColor)
                    : const SizedBox.shrink(),
                Expanded(
                    child: buildRow("1", "2", "3", size, widget.dividerColor)),
                (widget.showDivider == null || widget.showDivider == true)
                    ? buildHorizontalDivider(size, widget.dividerColor)
                    : const SizedBox.shrink(),
                Expanded(
                    child: buildRow(
                        "Reset", "0", "Back", size, widget.dividerColor))
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildRow(String leftNumber, String middleNumber, String rightNumber,
      Size size, Color? dividerColor) {
    return Row(
      children: [
        //left number
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: () {
              if (leftNumber != "Reset") {
                setState(() {
                  resultNumber += leftNumber;
                });
              } else {
                setState(() {
                  resultNumber = "";
                });
              }
              if (widget.resultFunction != null) {
                widget.resultFunction!(resultNumber);
              }
            },
            child: Center(
              child: Text(
                leftNumber,
                style: widget.textStyle,
              ),
            ),
          ),
        ),

        //divider
        Visibility(
          visible: (widget.showDivider == null || widget.showDivider == true),
          child: leftNumber == "7"
              ? buildTopDivider(size, widget.dividerColor)
              : (leftNumber == "4" || leftNumber == "1")
                  ? buildMiddleDivider(size, widget.dividerColor)
                  : buildBottomDivider(size, widget.dividerColor),
        ),

        // middle number
        Expanded(
          flex: 1,
          child: InkWell(
            onTap: () {
              setState(() {
                resultNumber += middleNumber;
              });
              if (widget.resultFunction != null) {
                widget.resultFunction!(resultNumber);
              }
            },
            child: Center(
              child: Text(
                middleNumber,
                style: widget.textStyle,
              ),
            ),
          ),
        ),

        //divider
        Visibility(
          visible: (widget.showDivider == null || widget.showDivider!),
          child: leftNumber == "7"
              ? buildTopDivider(size, widget.dividerColor)
              : (leftNumber == "4" || leftNumber == "1")
                  ? buildMiddleDivider(size, widget.dividerColor)
                  : buildBottomDivider(size, widget.dividerColor),
        ),

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
              if (widget.resultFunction != null) {
                widget.resultFunction!(resultNumber);
              }
            },
            child: Center(
              child: Text(
                rightNumber,
                style: widget.textStyle,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildHorizontalDivider(Size size, Color? dividerColor) {
    return Container(
      width: size.width,
      height: 1,
      decoration: BoxDecoration(
          gradient: dividerColor == null
              ? LinearGradient(
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
                )
              : null,
          color: dividerColor != null ? dividerColor : null),
    );
  }

  Widget buildTopDivider(Size size, Color? dividerColor) {
    return Container(
      width: 1,
      height: size.height,
      decoration: BoxDecoration(
          gradient: dividerColor == null
              ? LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white10,
                    Colors.black12,
                    Colors.black26,
                    Colors.black26,
                  ],
                )
              : null,
          color: dividerColor),
    );
  }

  Widget buildBottomDivider(Size size, Color? dividerColor) {
    return Container(
      width: 1,
      height: size.height,
      decoration: BoxDecoration(
          gradient: dividerColor == null
              ? LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.white10,
                    Colors.black12,
                    Colors.black26,
                    Colors.black26,
                  ],
                )
              : null,
          color: dividerColor),
    );
  }

  Widget buildMiddleDivider(Size size, Color? dividerColor) {
    return Container(
      width: 1,
      height: size.height,
      color: dividerColor ?? Colors.black26,
    );
  }

  String obscureString(String input) {
    return input.replaceAll(RegExp(r'.'), '*');
  }
}

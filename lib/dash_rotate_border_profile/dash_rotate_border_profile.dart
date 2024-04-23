import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DashRotateBorderProfile extends StatefulWidget {
  const DashRotateBorderProfile({Key? key}) : super(key: key);

  @override
  State<DashRotateBorderProfile> createState() =>
      _DashRotateBorderProfileState();
}

class _DashRotateBorderProfileState extends State<DashRotateBorderProfile>
    with TickerProviderStateMixin {
  late AnimationController _rotateController2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _rotateController = AnimationController(
    //   duration: const Duration(minutes: 60),
    //   vsync: this,
    // );
    //
    // _rotateController.forward();

    _rotateController2 = AnimationController(
      duration: const Duration(minutes: 60),
      vsync: this,
    );

    _rotateController2.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _rotateController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return buildRotation();
          },
        ),

        // child: buildRotation(),
      ),
    ));
  }

  Widget buildRotation() {
    return Stack(
      children: [
        RotationTransition(
          turns: Tween(begin: 0.0, end: 700.0).animate(_rotateController2),
          child: Container(
            width: 70,
            height: 70,
            padding: const EdgeInsets.all(2),
            child: Center(
              child: DottedBorder(
                // dashPattern: [12, 6, 5, 6],
                dashPattern: const [10, 6],
                // 8 is space between dots
                strokeCap: StrokeCap.round,
                color: Colors.red,
                // padding: EdgeInsets.all(2),
                strokeWidth: 2,
                borderType: BorderType.Circle,
                child: ClipOval(
                  child: Container(),
                ),
              ),
            ),
          ),
        ),
        Container(
            width: 70,
            height: 70,
            padding: EdgeInsets.all(5),
            child: Image.asset(
              "assets/images/profile2.png",
              fit: BoxFit.cover,
            )),
      ],
    );
  }
}

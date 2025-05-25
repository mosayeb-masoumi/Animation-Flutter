
import 'package:flutter/material.dart';
import 'package:flutter_animation/motion_widgets/alignment_transition_screen.dart';
import 'package:flutter_animation/motion_widgets/animated_List_screen.dart';
import 'package:flutter_animation/motion_widgets/animated_align_demo.dart';
import 'package:flutter_animation/motion_widgets/animated_builder_screen.dart';
import 'package:flutter_animation/motion_widgets/animated_container_screen.dart';
import 'package:flutter_animation/motion_widgets/animated_default_text_style_screen.dart';
import 'package:flutter_animation/motion_widgets/animated_list_state_screen.dart';
import 'package:flutter_animation/motion_widgets/animated_position_screen.dart';
import 'package:flutter_animation/motion_widgets/decorated_box_transition_screen.dart';
import 'package:flutter_animation/motion_widgets/matrix_transition_screen.dart';
import 'package:flutter_animation/motion_widgets/slide_transition_screen.dart';


class MotionWidgetScreen extends StatefulWidget {
  const MotionWidgetScreen({super.key});

  @override
  State<MotionWidgetScreen> createState() => _MotionWidgetScreenState();
}

class _MotionWidgetScreenState extends State<MotionWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AnimatedListScreen()),
              );
            }, child: Text("Animated List Screen")),

            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AnimatedListStateScreen()),
              );
            }, child: Text("Animated List State Screen")),

            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AlignmentTransitionScreen()),
              );
            }, child: Text("AlignTransition")),

            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AnimatedAlignDemo()),
              );
            }, child: Text("Animated Align screen")),

            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AnimatedBuilderScreen()),
              );
            }, child: Text("Animated Builder screen")),

            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AnimatedContainerScreen()),
              );
            }, child: Text("Animated Container screen")),


            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AnimatedDefaultTextStyleScreen()),
              );
            }, child: Text("Animated Default TextStyle Screen")),

            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AnimatedPositionScreen()),
              );
            }, child: Text("Animated Position Screen")),

            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DecoratedBoxTransitionScreen()),
              );
            }, child: Text("Decorate dBox Transition Screen")),

            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MatrixTransitionExample()),
              );
            }, child: Text("Matrix Transition Example")),

            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SlideTransitionScreen()),
              );
            }, child: Text("Slide Transition Screen")),

          ],
        ),
      ),
    );
  }
}

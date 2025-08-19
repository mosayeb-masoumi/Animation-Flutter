import 'package:flutter/material.dart';
import 'package:pretty_animated_text/pretty_animated_text.dart';

class PrettyAnimatedTextScreen extends StatefulWidget {
  const PrettyAnimatedTextScreen({super.key});

  @override
  State<PrettyAnimatedTextScreen> createState() =>
      _PrettyAnimatedTextScreenState();
}

class _PrettyAnimatedTextScreenState extends State<PrettyAnimatedTextScreen> {
  bool showSpringText = false;
  bool showChimeBellText = false;
  bool showScaleText = false;
  bool showBlurText = false;
  bool showRotateText = false;
  bool showOffsetText = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Pretty Animated text"),
                ElevatedButton(
                    onPressed: () {
                      if(showSpringText==true){
                        showSpringText = false;
                      }else{
                        showSpringText = true;
                      }
                      setState(() {});
                    },
                    child: Text("spring text")),
                Visibility(
                    visible: showSpringText,
                    child: SpringText(
                      text: 'Lorem ipsum dolor sit amet ...',
                      duration: const Duration(seconds: 1),
                      type: AnimationType.word,
                      textStyle: const TextStyle(color:Colors.red ,fontSize: 18),
                    )),

                ElevatedButton(
                    onPressed: () {
                      if(showChimeBellText==true){
                        showChimeBellText = false;
                      }else{
                        showChimeBellText = true;
                      }
                      setState(() {});
                    },
                    child: Text("ChimeBell Text")),
                Visibility(
                    visible: showChimeBellText,
                    child: ChimeBellText(
                      text: 'Lorem ipsum dolor sit amet ...',
                      duration: const Duration(seconds: 1),
                      type: AnimationType.word,
                      textStyle: const TextStyle(fontSize: 18),
                    ),),



                ElevatedButton(
                    onPressed: () {
                      if(showScaleText==true){
                        showScaleText = false;
                      }else{
                        showScaleText = true;
                      }
                      setState(() {});
                    },
                    child: Text("Scale Text")),
                Visibility(
                  visible: showScaleText,
                  child: ScaleText(
                    text: 'Lorem ipsum dolor sit amet ...',
                    duration: const Duration(seconds: 1),
                    type: AnimationType.word,
                    textStyle: const TextStyle(fontSize: 18),
                  ),),



                ElevatedButton(
                    onPressed: () {
                      if(showBlurText==true){
                        showBlurText = false;
                      }else{
                        showBlurText = true;
                      }
                      setState(() {});
                    },
                    child: Text("Blur Text")),
                Visibility(
                  visible: showBlurText,
                  child: BlurText(
                    text: 'Lorem ipsum dolor sit amet ...',
                    duration: const Duration(seconds: 1),
                    type: AnimationType.word,
                    textStyle: const TextStyle(fontSize: 18),
                  ),),


                ElevatedButton(
                    onPressed: () {
                      if(showRotateText==true){
                        showRotateText = false;
                      }else{
                        showRotateText = true;
                      }
                      setState(() {});
                    },
                    child: Text("Rotate Text")),
                Visibility(
                  visible: showRotateText,
                  child:  RotateText(
                    text: 'Lorem ipsum dolor sit amet ...',
                    direction: RotateAnimationType.clockwise,
                    duration: const Duration(seconds: 1),
                    type: AnimationType.word,
                    textStyle: const TextStyle(fontSize: 18),
                  ),),



                ElevatedButton(
                    onPressed: () {
                      if(showOffsetText==true){
                        showOffsetText = false;
                      }else{
                        showOffsetText = true;
                      }
                      setState(() {});
                    },
                    child: Text("offset Text")),
                Visibility(
                  visible: showOffsetText,
                  child: Column(
                    children: [
                      OffsetText(
                        text: 'Lorem ipsum dolor sit amet ...',
                        duration: const Duration(seconds: 1),
                        type: AnimationType.word,
                        slideType: SlideAnimationType.topBottom,
                        textStyle: const TextStyle(fontSize: 18),
                      ),

                      OffsetText(
                        text: 'Lorem ipsum dolor sit amet ...',
                        duration: const Duration(seconds: 1),
                        type: AnimationType.word,
                        slideType: SlideAnimationType.bottomTop,
                        textStyle: const TextStyle(fontSize: 18),
                      ),

                      OffsetText(
                        text: 'Lorem ipsum dolor sit amet ...',
                        duration: const Duration(seconds: 1),
                        type: AnimationType.word,
                        slideType: SlideAnimationType.rightLeft,
                        textStyle: const TextStyle(fontSize: 18),
                      ),

                      OffsetText(
                        text: 'Lorem ipsum dolor sit amet ...',
                        duration: const Duration(seconds: 1),
                        type: AnimationType.word,
                        slideType: SlideAnimationType.leftRight,
                        textStyle: const TextStyle(fontSize: 18),
                      ),

                      OffsetText(
                        text: 'Lorem ipsum dolor sit amet ...',
                        duration: const Duration(seconds: 1),
                        type: AnimationType.word,
                        slideType: SlideAnimationType.alternateLR,
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      OffsetText(
                        text: 'Lorem ipsum dolor sit amet ...',
                        duration: const Duration(seconds: 1),
                        type: AnimationType.word,
                        slideType: SlideAnimationType.alternateTB,
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),),



              ],
            ),
          ),
        ),
      ),
    );
  }
}

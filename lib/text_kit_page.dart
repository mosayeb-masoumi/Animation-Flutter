import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimateTextKitPage extends StatefulWidget {
  const AnimateTextKitPage({Key? key}) : super(key: key);

  @override
  State<AnimateTextKitPage> createState() => _AnimateTextKitPageState();
}

class _AnimateTextKitPageState extends State<AnimateTextKitPage> {




  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  static const colorizeTextStyle = TextStyle(
    fontSize: 50.0,
    fontFamily: 'Horizon',
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('text kit animation'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Hello world!',
                    textStyle: const TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                    speed: const Duration(milliseconds: 200),
                  ),
                ],
                totalRepeatCount: 1,
                pause: const Duration(milliseconds: 200),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),

              Divider(color: Colors.black26,),

              Row(
                // mainAxisSize: MainAxisSize.min,

                children: <Widget>[
                  const SizedBox(width: 20.0, height: 100.0),
                  const Text(
                    'Be',
                    style: TextStyle(fontSize: 43.0),
                  ),
                  const SizedBox(width: 20.0, height: 100.0),
                  DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 40.0,
                      color: Colors.orange,
                      fontFamily: 'Horizon',
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        RotateAnimatedText('AWESOME'),
                        RotateAnimatedText('OPTIMISTIC'),
                        RotateAnimatedText('DIFFERENT'),
                      ],
                      onTap: () {
                        print("Tap Event");

                        },

                       repeatForever: true,

                    ),
                  ),
                ],
              ),

              Divider(color: Colors.black26,),

              // AnimatedTextKit(
              //   animatedTexts: [
              //     FadeAnimatedText(
              //       'Fade First',
              //       textStyle:
              //       TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
              //     ),
              //     ScaleAnimatedText(
              //       'Then Scale',
              //       textStyle:
              //       TextStyle(fontSize: 70.0, fontFamily: 'Canterbury'),
              //     ),
              //   ],
              //   totalRepeatCount: 1,
              // ),

              SizedBox(
                width: 250.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 32.0,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      FadeAnimatedText('do IT!'),
                      FadeAnimatedText('do it RIGHT!!'),
                      FadeAnimatedText('do it RIGHT NOW!!!'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                    // totalRepeatCount: 1,
                  ),
                ),
              ),


              Divider(color: Colors.black26,),

              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 30.0,
                    color: Colors.orange,
                    fontFamily: 'Bobbers',
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText('It is not enough to do your best,'),
                      TyperAnimatedText('you must know what to do,'),
                      TyperAnimatedText('and then do your best'),
                      TyperAnimatedText('- W.Edwards Deming'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ),

              Divider(color: Colors.black26,),

              SizedBox(
                width: 250.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 30.0,
                    color: Colors.orange,
                    fontFamily: 'Agne',
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('Discipline is the best tool'),
                      TypewriterAnimatedText('Design first, then code'),
                      TypewriterAnimatedText(
                          'Do not patch bugs out, rewrite them'),
                      TypewriterAnimatedText(
                          'Do not test bugs out, design them out'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ),

              Divider(color: Colors.black26,),


              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 70.0,
                      color: Colors.orange,
                      fontFamily: 'Canterbury',
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        ScaleAnimatedText('Think'),
                        ScaleAnimatedText('Build'),
                        ScaleAnimatedText('Ship'),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ),
              ),

              Divider(color: Colors.black26,),


              SizedBox(
                width: 250.0,
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'Larry Page',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                    ColorizeAnimatedText(
                      'Bill Gates',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                    ColorizeAnimatedText(
                      'Steve Jobs',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                  ],
                  isRepeatingAnimation: true,
                  repeatForever: true,
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),

              Divider(color: Colors.black26,),

              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: TextLiquidFill(
                  text: 'LIQUIDY',
                  waveColor: Colors.blueAccent,
                  boxBackgroundColor: Colors.redAccent,
                  textStyle: TextStyle(
                    fontSize: 80.0,
                    fontWeight: FontWeight.bold,
                  ),
                  boxHeight: 300.0,
                ),
              ),

              Divider(color: Colors.black26,),


              DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 20.0,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('Hello World'),
                    TyperAnimatedText(" Look at the waves  ,Look at the waves"),
                    WavyAnimatedText('Look at the waves'),
                  ],
                  isRepeatingAnimation: true,
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),


              Divider(color: Colors.black26,),

            ],
          ),
        ),
      ),
    );
  }
}

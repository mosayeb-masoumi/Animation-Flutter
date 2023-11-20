
import 'package:flutter/material.dart';
import 'package:flutter_animation/switch_animate/animated_toggle.dart';

class SwitchAnimationPage extends StatefulWidget {
  const SwitchAnimationPage({Key? key}) : super(key: key);

  @override
  State<SwitchAnimationPage> createState() => _SwitchAnimationPageState();
}

class _SwitchAnimationPageState extends State<SwitchAnimationPage> {
  int _toggleValue = 0;

  void onChanged(bool state){

    setState(() {
      state? _toggleValue=1 : _toggleValue=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toggle Button'),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AnimatedToggle(
            //   values: ['English', 'Arabic'],
            //   onToggleCallback: (value) {
            //     setState(() {
            //       _toggleValue = value;
            //     });
            //   },
            //   buttonColor: const Color(0xFF0A3157),
            //   backgroundColor: const Color(0xFFB5C1CC),
            //   textColor: const Color(0xFFFFFFFF),

            // ),

            CustomSwitch(
                value: false,
                enableColor: Colors.green,
                disableColor: Colors.grey,
                width: 100,
                height: 50,
                switchHeight: 50,
                switchWidth: 50,
                onChanged: onChanged
            ),

            Text('Toggle Value : $_toggleValue'),
          ],
        ),
      ),
    );
  }
}
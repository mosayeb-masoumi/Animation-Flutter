import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  const StepperPage({Key? key}) : super(key: key);

  @override
  State<StepperPage> createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Stepper(
          steps: [
            Step(
                isActive: _currentStep == 0,
                title: const Text("Step 1"),
                content: const Text(
                  "Information for step 1",
                  style: TextStyle(color: Colors.red),
                )),
            Step(
                isActive: _currentStep == 1,
                title: const Text("Step 2"),
                content: const Text(
                  "Information for step 2",
                  style: TextStyle(color: Colors.red),
                )),
            Step(
                isActive: _currentStep == 2,
                title: const Text("Step 3"),
                content: const Text(
                  "Information for step 3",
                  style: TextStyle(color: Colors.red),
                )),
          ],
          onStepTapped: (int newIndex) {
            setState(() {
              _currentStep = newIndex;
            });
          },
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep != 2) {
              setState(() {
                _currentStep += 1;
              });
            }
          },
          onStepCancel: () {
            if (_currentStep != 0) {
              setState(() {
                _currentStep -= 1;
              });
            }
          },

          // type: StepperType.horizontal,
          type: StepperType.vertical,
        ),
      )),
    );
  }
}

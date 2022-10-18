import 'package:flutter/material.dart';
import 'package:onboarding_library/advance_icon.dart';
import 'package:onboarding_library/animate_do.dart';
import 'package:onboarding_library/animate_size_fade.dart';
import 'package:onboarding_library/circle_menu_page.dart';
import 'package:onboarding_library/credit_card_page.dart';
import 'package:onboarding_library/day_night_time_picker.dart';
import 'package:onboarding_library/delay_display_page.dart';
import 'package:onboarding_library/drawing_animation.dart';
import 'package:onboarding_library/flip_card_page.dart';
import 'package:onboarding_library/like_button_page.dart';
import 'package:onboarding_library/star_menu.dart';
import 'package:onboarding_library/text_kit_page.dart';
import 'package:onboarding_library/transition/transition_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AnimateTextKitPage()),
                  );
                }, child: Text("Text kit animation")),

                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DayNightTimePickerPage()),
                  );
                }, child: Text("Day night time picker")),

                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AnimateDo()),
                  );
                }, child: Text("Animate do")),


                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FlipCardPage()),
                  );
                }, child: Text("Flip card")),


                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CreditCardPage()),
                  );
                }, child: Text("Credit card")),

                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CircleMenuPage()),
                  );
                }, child: Text("Circle Menu")),

                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DelayDisplayPage()),
                  );
                }, child: Text("Delay Display")),

                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LikeButtonPage()),
                  );
                }, child: Text("Like button")),


                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DrawingAnimationPage()),
                  );
                }, child: Text("Drawing Animation")),


                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TransitionPage()),
                  );
                }, child: Text("Transition")),


                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AnimateSizeFadePage()),
                  );
                }, child: Text("Animate size and fade")),

                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AdvanceIconPage()),
                  );
                }, child: Text("Advance Icon")),

                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StarMenuPage()),
                  );
                }, child: Text("Star menu")),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
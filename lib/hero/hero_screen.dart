import 'package:flutter/material.dart';
import 'package:flutter_animation/hero/hero_list_page.dart';
import 'package:flutter_animation/hero/hero_transition_animation_page.dart';

class HeroScreen extends StatefulWidget {
  const HeroScreen({super.key});

  @override
  State<HeroScreen> createState() => _HeroScreenState();
}

class _HeroScreenState extends State<HeroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                  const HeroListPage()),
            );
          }, child: Text("Hero list example")),
          SizedBox(height: 15,),

          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                  const HeroTransitionAnimationPage()),
            );
          }, child: Text("Hero simple example")),
        ],
      ),
    );
  }
}

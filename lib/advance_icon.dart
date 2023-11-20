
import 'package:flutter/material.dart';
import 'package:advanced_icon/advanced_icon.dart';

class AdvanceIconPage extends StatefulWidget {
  const
  AdvanceIconPage({Key? key}) : super(key: key);

  @override
  State<AdvanceIconPage> createState() => _AdvanceIconPageState();
}

class _AdvanceIconPageState extends State<AdvanceIconPage> {

  AdvancedIconState _state = AdvancedIconState.primary;

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(title: Text("Advance icon"),),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Center(
                  child: GestureDetector(
                    child: AdvancedIcon(
                      icon: Icons.add , //change this icon as per your requirement.
                      secondaryIcon: Icons.check, //change this icon as per your requirement.
                      state: _state,
                      size: 50,
                      color: Colors.orange,
                      secondaryColor: Colors.green,

                      duration: Duration(milliseconds: 200),
                      effect: AdvancedIconEffect.spin,
                      // effect: AdvancedIconEffect.bubble,
                      // effect: AdvancedIconEffect.bubbleFade,
                      // effect: AdvancedIconEffect.flipH,
                      // effect: AdvancedIconEffect.flipV,
                      // effect: AdvancedIconEffect.spinBubble,
                      // effect: AdvancedIconEffect.fade,
                    ),
                    onTap: (){
                      setState(() {
                        if (_state == AdvancedIconState.primary) {
                          _state = AdvancedIconState.secondary;
                        } else {
                          _state = AdvancedIconState.primary;
                        }
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
      ),

    );
  }
}

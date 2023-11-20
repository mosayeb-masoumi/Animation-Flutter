
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class GlassmorphismPage extends StatefulWidget {
  const GlassmorphismPage({Key? key}) : super(key: key);

  @override
  State<GlassmorphismPage> createState() => _GlassmorphismPageState();
}

class _GlassmorphismPageState extends State<GlassmorphismPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: Stack(
          children: [
            Image.network(
              "https://github.com/RitickSaha/glassmophism/blob/master/example/assets/bg.png?raw=true",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              scale: 1,
            ),
            SafeArea(
                child: Center(
              child: GlassmorphicContainer(
                width: size.width * (3/4),
                height: size.height * (3/4),
                borderRadius: 20,
                blur: 5,
                linearGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFffffff).withOpacity(0.1),
                      Color(0xFFFFFFFF).withOpacity(0.05),
                    ],
                    // stops: [0.1, 1,]
                ),
                border: 1,
                borderGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFffffff).withOpacity(0.5),
                    Color((0xFFFFFFFF)).withOpacity(0.5),
                  ],
                ),
                child: Container(
                  child: Center(child: Text("This is GlassMorphisem" , style: TextStyle(color: Colors.white),),),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

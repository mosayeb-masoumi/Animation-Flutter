// import 'package:flutter/material.dart';
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// import 'package:onboarding_library/neomorphism/examples/neomprphism_example1.dart';
//
// class NeomorphismPage extends StatefulWidget {
//   const NeomorphismPage({Key? key}) : super(key: key);
//
//   @override
//   State<NeomorphismPage> createState() => _NeomorphismPageState();
// }
//
// class _NeomorphismPageState extends State<NeomorphismPage> {
//
//   bool isPressed = false;
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: Container(
//         width: size.width,
//         height: size.height,
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 50,
//               ),
//               // without library
//               NeomorphismExample1(),
//
//               SizedBox(
//                 height: 10,
//               ),
//
//
//               SizedBox(
//                 height: 10,
//               ),
//
//               //with library
//               NeumorphicButton(
//                 onPressed: () {
//                   print("onClick");
//                 },
//                 style: NeumorphicStyle(
//                   shape: NeumorphicShape.flat,
//                   boxShape: NeumorphicBoxShape.circle(),
//                 ),
//                 padding: const EdgeInsets.all(12.0),
//                 child: Icon(
//                   Icons.favorite_border,
//                   color: Colors.yellowAccent,
//                 ),
//               ),
//
//               SizedBox(
//                 height: 10,
//               ),
//
//               NeumorphicButton(
//                   margin: EdgeInsets.only(top: 12),
//                   onPressed: () {
//                     NeumorphicTheme.of(context)?.themeMode =
//                         NeumorphicTheme.isUsingDark(context)
//                             ? ThemeMode.light
//                             : ThemeMode.dark;
//                   },
//                   style: NeumorphicStyle(
//                     shape: NeumorphicShape.concave,
//                     boxShape:
//                         NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
//                   ),
//                   padding: const EdgeInsets.all(12.0),
//                   child: Text(
//                     "Toggle Theme",
//                     style: TextStyle(color: Colors.black26),
//                   )),
//
//               SizedBox(
//                 height: 20,
//               ),
//
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   NeumorphicButton(
//                     onPressed: () {
//                       print("onClick");
//                     },
//                     style: NeumorphicStyle(
//                       shape: NeumorphicShape.flat,
//                       boxShape: NeumorphicBoxShape.circle(),
//                     ),
//                     padding: const EdgeInsets.all(12.0),
//                     child: Icon(
//                       Icons.favorite_border,
//                       color: Colors.redAccent.withOpacity(0.5),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   NeumorphicButton(
//                     onPressed: () {
//                       print("onClick");
//                     },
//                     style: NeumorphicStyle(
//                       shape: NeumorphicShape.concave,
//                       boxShape: NeumorphicBoxShape.circle(),
//                     ),
//                     padding: const EdgeInsets.all(12.0),
//                     child: Icon(
//                       Icons.favorite_border,
//                       color: Colors.redAccent,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   NeumorphicButton(
//                     onPressed: () {
//                       print("onClick");
//                     },
//                     style: NeumorphicStyle(
//                       shape: NeumorphicShape.convex,
//                       boxShape: NeumorphicBoxShape.circle(),
//                     ),
//                     padding: const EdgeInsets.all(12.0),
//                     child: Icon(
//                       Icons.favorite_border,
//                       color: Colors.redAccent.withOpacity(0.5),
//                     ),
//                   ),
//
//                 ],
//               ),
//
//
//
//               SizedBox(
//                 height: 10,
//               ),
//
//
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

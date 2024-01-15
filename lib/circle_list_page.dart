
import 'package:circle_list/circle_list.dart';
import 'package:flutter/material.dart';

class CircleListPage extends StatefulWidget {
  const CircleListPage({super.key});

  @override
  State<CircleListPage> createState() => _CircleListPageState();
}

class _CircleListPageState extends State<CircleListPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [



          // CircleList(
          //   gradient: LinearGradient(
          //     colors: [Colors.redAccent, Colors.blueAccent],
          //   ),
          //   origin: Offset(0, 0),
          //   children: List.generate(10, (index) {
          //     return Icon(
          //       Icons.details,
          //       color: index % 2 == 0 ? Colors.blue : Colors.orange,
          //     );
          //   }),
          // ),


           Positioned(
             bottom: 0,
             child: Container(
               color: Colors.blueGrey,
               width: size.width,
               height: 200,
               child: Center(
                 child: CircleList(
                   outerRadius: 150,
                    origin: Offset(0, 0),
                    children: List.generate(10, (index) {
                      return Icon(
                        Icons.details,
                        color: index % 2 == 0 ? Colors.blue : Colors.orange,
                      );
                    }),
                  ),
               ),
             ),
           ),

        ],
      ),
    );
  }
}

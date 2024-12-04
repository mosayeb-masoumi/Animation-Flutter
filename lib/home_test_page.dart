
import 'dart:async';

import 'package:flutter/material.dart';

class HomeTestPage extends StatefulWidget {
  const HomeTestPage({super.key});

  @override
  State<HomeTestPage> createState() => _HomeTestPageState();
}

class _HomeTestPageState extends State<HomeTestPage> {
  String _status = 'Initial State';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: NotificationListener<ScrollEndNotification>(
          onNotification: (notification) {
            print("scroll ended");
             return true;
          },
          child: ListView.builder(
              itemCount : 200 ,
              itemBuilder: (context , index){
                return ListTile(
                  title: Text("Item $index"),
                );
              }),
        ),
      ),
    );
  }

}

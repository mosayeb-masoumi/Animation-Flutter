import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:animate_do/animate_do.dart';

class ToastSwapDismissablePage extends StatefulWidget {
  const ToastSwapDismissablePage({Key? key}) : super(key: key);

  @override
  State<ToastSwapDismissablePage> createState() =>
      _ToastSwapDismissablePageState();
}

class _ToastSwapDismissablePageState extends State<ToastSwapDismissablePage> {
  late bool visible;

  @override
  void initState() {
    super.initState();
    visible = false;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Flutter Toast"),
        // ),
        body: SafeArea(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.blueGrey,
            child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        visible = true;
                      });
                    },
                    child: Text("show notif"))),
          ),
          visible
              ? Container(
                  child: Dismissible(
                      onDismissed: (direction) {
                        // Remove the item from the data source.
                        setState(() {
                          visible = false;
                        });
                      },
                      direction: DismissDirection.horizontal,
                      key: const Key("0"),
                      child: FadeInDownBig(
                          duration: const Duration(milliseconds: 300),
                          child: Container(
                            width: 400,
                            height: 50,
                            margin: const EdgeInsets.all(20),
                            color: Colors.green,
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    visible = false;
                                  });
                                },
                                child: const Icon(
                                  Icons.delete,
                                  size: 50,
                                  color: Colors.red,
                                )),
                          ))),
                )
              : Container(),
        ],
      ),
    ));
  }
}

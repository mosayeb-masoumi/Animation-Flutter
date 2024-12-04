import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class ToastPage extends StatefulWidget {
  const ToastPage({Key? key}) : super(key: key);

  @override
  State<ToastPage> createState() => _ToastPageState();
}

class _ToastPageState extends State<ToastPage> {
  // late FToast fToast;

  showCustomToast() {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.green,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "sdjfasjdfjab",
            ),
          )
        ],
      ),
    );

    // fToast.showToast(
    //   child: toast,
    //   // gravity: ToastGravity.TOP,
    //   toastDuration: const Duration(seconds: 3),
    // );
  }

  @override
  void initState() {
    super.initState();
    // fToast = FToast();
    // fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Toast"),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: ElevatedButton(
              child: Text("Show Toast"),
              onPressed: () {
                showCustomToast();
              },
            ),
          ),
        ));
  }
}

import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation/consts.dart';

class CustomScrollExample3 extends StatelessWidget {
  const CustomScrollExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // floating: true,
            toolbarHeight: 70,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.account_balance),
                Icon(Icons.settings),
              ],
            ),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(30),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    padding: const EdgeInsets.only(top: 5, bottom: 10),
                    width: double.maxFinite,
                    child: const Center(
                        child: Text(
                      "Chinese Food",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    )))),
            pinned: true,
            backgroundColor: Colors.blueGrey,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/image1.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                // Container(
                //   child: ExpandableText(AppConst.shortText, expandText: AppConst.longText),
                // ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                    AppConst.longText,
                    style: TextStyle(fontSize: 19),
                  ),
                ),

                Container(
                  width: double.maxFinite,
                  height: 100,
                  color: Colors.red,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

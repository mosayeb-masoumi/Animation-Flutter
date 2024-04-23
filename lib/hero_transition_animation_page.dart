import 'package:flutter/material.dart';

class HeroTransitionAnimationPage extends StatelessWidget {
  const HeroTransitionAnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListTile(
          title: const Text("click on me"),
          trailing: const Hero(tag: "tag-1", child: Icon(Icons.person)),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
                tag: "tag-1",
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.deepOrange,
                ))
          ],
        ),
      ),
    );
  }
}

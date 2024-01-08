
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class StickyHeadersExamples extends StatefulWidget {
  const StickyHeadersExamples({super.key});

  @override
  State<StickyHeadersExamples> createState() => _StickyHeadersExamplesState();
}

class _StickyHeadersExamplesState extends State<StickyHeadersExamples> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return StickyHeader(
          header: Container(
            height: 50.0,
            color: Colors.blueGrey[700],
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Header #$index',
              style: const TextStyle(color: Colors.white),
            ),
          ),
          content: Container(
            height: 200,
            color: Colors.blue.withAlpha(100*index),
          ),
        );
      }),
    );
  }
}

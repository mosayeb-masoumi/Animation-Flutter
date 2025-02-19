import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Container(
                width: 300,
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Details',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    SizedBox(height: 10),
                    AnimatedSize(
                      duration: Duration(milliseconds: 250),
                      curve: Curves.easeInOut,
                      child: Column(
                        children: [
                          if (_isExpanded) ...[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Here are more details about the item.',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'You can add more information here.',
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'This can be as long as you need.',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: _toggleExpand,
                      child: Text(_isExpanded ? 'Close' : 'More'),
                    ),
                  ],
                )),
          ),
        ));
  }
}

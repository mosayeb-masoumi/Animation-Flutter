import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';

class ExpandableTextPage extends StatefulWidget {
  @override
  _ExpandableTextPageState createState() => _ExpandableTextPageState();
}

class _ExpandableTextPageState extends State<ExpandableTextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.yellow,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: ExpandableText(
              "this ia a long text this ia a long text this ia a long text this ia a long text this ia a long text this ia a long textthis ia a long text",
              expandText: 'show more',
              maxLines: 2,
              linkColor: Colors.blue,
              animation: true,
              collapseOnTextTap: true,
              prefixText: "username",
              // onPrefixTap: () => showProfile(username),
              prefixStyle: TextStyle(fontWeight: FontWeight.bold),
              // onHashtagTap: (name) => showHashtag(name),
              hashtagStyle: TextStyle(
                color: Color(0xFF30B6F9),
              ),
              // onMentionTap: (username) => showProfile(username),
              mentionStyle: TextStyle(
                fontWeight: FontWeight.w600,
              ),
              onUrlTap: (url) => {},
              urlStyle: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            color: Colors.yellow,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: ExpandableText(
              "this ia a long text this ia a long text this ia a long text this ia a long text this ia a long text this ia a long textthis ia a long text",
              expandText: 'show more',
              collapseText: 'show less',
              maxLines: 1,
              linkColor: Colors.blue,
            ),
          ),
        ],
      )),
    );
  }
}

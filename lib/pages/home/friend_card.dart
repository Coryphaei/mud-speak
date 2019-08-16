import 'package:flutter/material.dart';

class FriendCard extends StatefulWidget {
  @override
  _FriendCardState createState() {
    return new _FriendCardState();
  }
}

class _FriendCardState extends State<FriendCard> {
  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      child: new Container(
        margin: const EdgeInsets.only(top: 5.0),
        child: new Column(),
      ),
    );
  }
}

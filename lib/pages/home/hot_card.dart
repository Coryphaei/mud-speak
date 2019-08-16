import 'package:flutter/material.dart';

class HotCard extends StatefulWidget {
  @override
  _HotCardState createState() {
    return new _HotCardState();
  }
}

class _HotCardState extends State<HotCard> {
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

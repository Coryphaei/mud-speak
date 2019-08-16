import 'package:flutter/material.dart';

class RecommendCard extends StatefulWidget {
  @override
  _RecommendCardState createState() {
    return new _RecommendCardState();
  }
}

class _RecommendCardState extends State<RecommendCard> {
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

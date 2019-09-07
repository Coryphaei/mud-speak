import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MessagePage();
  }
}

class _MessagePage extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return new Text("消息中心");
  }
}

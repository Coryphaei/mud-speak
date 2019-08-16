import 'package:flutter/material.dart';
import 'pages/index/index.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '泥谭App',
      home: new Index(),
    );
  }
}
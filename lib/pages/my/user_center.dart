import 'package:flutter/material.dart';

//用户个人中心，个人信息页
class UserCenterPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new _UserCenter();
  }
}

class _UserCenter extends State<UserCenterPage>{
  @override
  Widget build(BuildContext context) {
    return new Text("个人中心");
  }
}
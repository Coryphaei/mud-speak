import 'package:flutter/material.dart';
import '../my/user_center.dart';
import '../../global_config.dart';
import 'topic_page.dart';
import '../layout/common_header.dart';

class CardDetailPage extends StatefulWidget {
  @override
  _CardDetailPageState createState() => new _CardDetailPageState();
}

class _CardDetailPageState extends State<CardDetailPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: GlobalConfig.themeData,
        home: new Scaffold(
          appBar: CommonHeader.commonTitleHeader(context, "详情"),
          body: new SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                new FlatButton(
                  child: new Container(
                      child: new Text("碎碎念",
                          style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              height: 1.3,
                              color: GlobalConfig.dark == true
                                  ? Colors.white70
                                  : Colors.black)),
                      alignment: Alignment.center),
                  onPressed: () {
                    Navigator.of(context)
                        .push(new MaterialPageRoute(builder: (context) {
                      return new TopicPage();
                    }));
                  },
                ),
                Container(
                  child: new FlatButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(new MaterialPageRoute(builder: (context) {
                        return new TopicPage();
                      }));
                    },
                    child: new Container(
                      child: new Text("甜甜秦",
                          style: new TextStyle(
                              fontSize: 14.0,
                              height: 1.1,
                              color: GlobalConfig.dark == true
                                  ? Colors.white70
                                  : Colors.black)),
                      alignment: Alignment.center,
                    ),
                    color: GlobalConfig.commonColor,
                  ),
                ),
                new Container(
                  child: new Text(
                      "三体定义的黑暗森林的宇宙格局，就是文明相互攻击和毁灭，越高级的，越明白藏好自己做好清理，绝不做探测对方文明的愚蠢行为。\n\n然而归还运动跳出了这个黑暗森林法则，不玩黑暗森林打击，不但探测别的宇宙文明，而且还深入了解对方文明，而且是全宇宙的所有文明。\n\n这是一种多么自信的科技实力呀，才能跳出黑暗森林的生存法则呀",
                      style: new TextStyle(
                          height: 1.4,
                          fontSize: 16.0,
                          color: GlobalConfig.fontColor),
                      textAlign: TextAlign.start),
                  margin: const EdgeInsets.all(16.0),
                )
              ],
            ),
          ),
        ));
  }
}

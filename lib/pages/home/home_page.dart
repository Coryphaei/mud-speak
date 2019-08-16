import 'package:flutter/material.dart';
import '../../global_config.dart';
import 'package:mud_speak/pages/topic/create_topic_page.dart';
import 'friend_card.dart';
import 'recommend_card.dart';
import 'hot_card.dart';
import 'search_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget barSearch() {
    return new Container(
        child: new Row(

          children: <Widget>[
            new Expanded(
                child: new FlatButton.icon(
              onPressed: () {
                //页面跳转
                Navigator.of(context)
                    .push(new MaterialPageRoute(builder: (context) {
                  return new SearchPage();
                }));
              },
              icon: new Icon(Icons.search,
                  color: GlobalConfig.fontColor, size: 18.0),
              label: new Text(
                "搜索话题/昵称/ID",
                style: new TextStyle(color: GlobalConfig.fontColor),
              ),
            )),
            new Container(
              decoration: new BoxDecoration(
                  border: new BorderDirectional(
                      start: new BorderSide(
                          color: GlobalConfig.fontColor, width: 1.0))),
              height: 14.0,
              width: 1.0,
            ),
            new Container(
                child: new FlatButton.icon(
              onPressed: () {
                Navigator.of(context)
                    .push(new MaterialPageRoute(builder: (context) {
                  return new CreateTopicPage();
                }));
              },
              icon: new Icon(Icons.border_color,
                  color: GlobalConfig.fontColor, size: 14.0),
              label: new Text(
                "创建话题",
                style: new TextStyle(color: GlobalConfig.fontColor),
              ),
            ))
          ],
        ),
        decoration: new BoxDecoration(
          borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
          color: GlobalConfig.searchBackgroundColor,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          title: barSearch(),
          bottom: new TabBar(
            labelColor: Colors.blueAccent,
            unselectedLabelColor: Colors.black54,
            indicatorColor: Colors.blue,
            tabs: [
              new Tab(text: "推荐"),
              new Tab(text: "好友"),
              new Tab(text: "热门"),
            ],
          ),
        ),
        body: new TabBarView(
            children: [new RecommendCard(), new FriendCard(), new HotCard()]),
      ),
    );
  }
}

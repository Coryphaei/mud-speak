import 'package:flutter/material.dart';
import 'package:mud_speak/model/topic_card.dart';

import '../../global_config.dart';

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
        child: new Column(
          children: <Widget>[
            topicCard(cards[0]),
            topicCard(cards[1]),
            topicCard(cards[2]),
            topicCard(cards[3]),
            topicCard(cards[4]),
            topicCard(cards[5])
          ],
        ),
      ),
    );
  }

  Widget topicCard(TopicCard card){
    Widget markWidget;
    if (card.img == null) {
      markWidget = new Text(
          card.content ,
          style: new TextStyle(height: 1.3, color: GlobalConfig.fontColor)
      );
    } else {
      markWidget = new Column(
        children: <Widget>[
          new Container(
              child: new AspectRatio(
                  aspectRatio: 3.0 / 2.0,
                  child:new Container(
                    foregroundDecoration:new BoxDecoration(
                        image: new DecorationImage(
                          image: new NetworkImage(card.img),
                        ),
                        borderRadius: const BorderRadius.all(const Radius.circular(6.0))
                    ),
                  )
              )
          ),
          new Container(
            child: new Container(
              child: new Text(
                  card.content,
                  style: new TextStyle(height: 1.3, color: GlobalConfig.fontColor)
              ),
            ),
          ),
        ],
      );
    }

    return new Container(
        color: Colors.white,
        margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
        child: new FlatButton(
          //点击查看详情
          onPressed: (){
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) {
                  return null;
                }
            ));
          },

          child: new Column(
            children: <Widget>[
              new Container(
                  child: new Text(
                      card.topicName,
                      style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, height: 1.3, color: Colors.black)
                  ),
                  margin: new EdgeInsets.only(top: 6.0, bottom: 2.0),
                  alignment: Alignment.center
              ),
              new Container(
                  child: new Text(
                      card.nickname,
                      style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0, height: 1.3, color: Colors.black)
                  ),
                  margin: new EdgeInsets.only(top: 6.0, bottom: 2.0),
                  alignment: Alignment.center
              ),
              new Container(
                  child: markWidget,
                  margin: new EdgeInsets.only(top: 6.0, bottom: 14.0),
                  alignment: Alignment.topLeft
              ),
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                        child: new Text(card.thumbUpCount.toString() + " 赞同 · " + card.commentCount.toString() + "评论", style: new TextStyle(color: GlobalConfig.fontColor))
                    ),
                    new Icon(Icons.linear_scale, color: GlobalConfig.fontColor)
                  ],
                ),
                padding: const EdgeInsets.only(bottom: 10.0),
              )
            ],
          ),
        )
    );
  }
}

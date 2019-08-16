import 'package:flutter/material.dart';
import '../../global_config.dart';

class SearchPage extends StatefulWidget{
  @override
  SearchPageState createState() => new SearchPageState();
}

class SearchPageState extends State<SearchPage> {

  Widget searchInput() {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Container(
            child: new FlatButton.icon(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: new Icon(Icons.arrow_back, color: GlobalConfig.fontColor),
              label: new Text(""),
            ),
            width: 60.0,
          ),
          new Expanded(
            child: new TextField(
              autofocus: true,
              decoration: new InputDecoration.collapsed(
                  hintText: "搜索话题/昵称/ID",
                  hintStyle: new TextStyle(color: GlobalConfig.fontColor)
              ),
            ),
          )
        ],
      ),
      decoration: new BoxDecoration(
        borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
        color: GlobalConfig.searchBackgroundColor
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: GlobalConfig.themeData,
        home: new Scaffold(
          appBar: new AppBar(
            title: searchInput(),
            backgroundColor: Colors.lightBlue,
          ),
          body: new SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                new Container(
                  child: new Text("泥谭热搜", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                  margin: const EdgeInsets.only(top: 16.0, left: 16.0, bottom: 16.0),
                  alignment: Alignment.topLeft,
                ),
                new Row(
                  children: <Widget>[
                    new Container(
                      child: new Chip(
                        label: new FlatButton(onPressed: (){}, child: new Text("碎碎念",style: new TextStyle(color: GlobalConfig.fontColor),)),
                        backgroundColor: Colors.black12,
                      ),
                      margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                      alignment: Alignment.topLeft,
                    ),
                    new Container(
                      child: new Chip(
                        label: new FlatButton(onPressed: (){}, child: new Text("生活中的刺",style: new TextStyle(color: GlobalConfig.fontColor))),
                        backgroundColor: GlobalConfig.dark == true ? Colors.white10 : Colors.black12,
                      ),
                      margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
                new Row(
                  children: <Widget>[
                    new Container(
                      child: new Chip(
                        label: new FlatButton(onPressed: (){}, child: new Text("美好的相遇",style: new TextStyle(color: GlobalConfig.fontColor))),
                        backgroundColor: GlobalConfig.dark == true ? Colors.white10 : Colors.black12,
                      ),
                      margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                      alignment: Alignment.topLeft,
                    ),
                    new Container(
                      child: new Chip(
                        label: new FlatButton(onPressed: (){}, child: new Text("地球都有对象了",style: new TextStyle(color: GlobalConfig.fontColor))),
                        backgroundColor: GlobalConfig.dark == true ? Colors.white10 : Colors.black12,
                      ),
                      margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
                new Container(
                  child: new Text("搜索历史", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                  margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                  alignment: Alignment.topLeft,
                ),
                new Container(
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        child: new Icon(Icons.access_time, color: GlobalConfig.fontColor, size: 16.0),
                        margin: const EdgeInsets.only(right: 12.0),
                      ),
                      new Expanded(
                        child: new Container(
                          child: new Text("业余兴趣", style: new TextStyle( color: GlobalConfig.fontColor, fontSize: 14.0),),
                        ),
                      ),
                      new Container(
                        child: new Icon(Icons.clear, color: GlobalConfig.fontColor, size: 16.0),
                      )
                    ],
                  ),
                  margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
                  padding: const EdgeInsets.only(bottom: 10.0),
                  decoration: new BoxDecoration(
                    border: new BorderDirectional(bottom: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12))
                  ),
                ),
                new Container(
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        child: new Icon(Icons.access_time, color: GlobalConfig.fontColor, size: 16.0),
                        margin: const EdgeInsets.only(right: 12.0),
                      ),
                      new Expanded(
                        child: new Container(
                          child: new Text("三体", style: new TextStyle( color: GlobalConfig.fontColor, fontSize: 14.0),),
                        ),
                      ),
                      new Container(
                        child: new Icon(Icons.clear, color: GlobalConfig.fontColor, size: 16.0),
                      )
                    ],
                  ),
                  margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
                  padding: const EdgeInsets.only(bottom: 10.0),
                  decoration: new BoxDecoration(
                      border: new BorderDirectional(bottom: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12))
                  ),
                ),
                new Container(
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        child: new Icon(Icons.access_time, color: GlobalConfig.fontColor, size: 16.0),
                        margin: const EdgeInsets.only(right: 12.0),
                      ),
                      new Expanded(
                        child: new Container(
                          child: new Text("人类未来", style: new TextStyle( color: GlobalConfig.fontColor, fontSize: 14.0),),
                        ),
                      ),
                      new Container(
                        child: new Icon(Icons.clear, color: GlobalConfig.fontColor, size: 16.0),
                      )
                    ],
                  ),
                  margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
                  padding: const EdgeInsets.only(bottom: 10.0),
                  decoration: new BoxDecoration(
                      border: new BorderDirectional(bottom: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12))
                  ),
                ),
              ],
            ),
          )
        )
    );
  }
}
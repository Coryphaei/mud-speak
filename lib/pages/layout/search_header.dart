import 'package:flutter/material.dart';
import '../../global_config.dart';

class SearchHeader {
  static Widget searchInput(BuildContext context) {
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
              decoration: new InputDecoration.collapsed(
                  hintText: "搜索话题",
                  hintStyle: new TextStyle(color: GlobalConfig.fontColor)
              ),
            ),
          ),
          new Container(
            child: new IconButton(icon: new Icon(Icons.share, color: GlobalConfig.fontColor), onPressed: (){}, padding: const EdgeInsets.all(0.0), iconSize: 18.0),
          ),
          new Container(
            child: new IconButton(icon: new Icon(Icons.list, color: GlobalConfig.fontColor), onPressed: (){}, padding: const EdgeInsets.all(0.0), iconSize: 18.0),
          ),
        ],
      ),
      decoration: new BoxDecoration(
        borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
        color: GlobalConfig.searchBackgroundColor,
      ),
      height: 36.0,
      //padding: new EdgeInsets.only(top:8.0, bottom: 8.0, left: 8.0, right: 8.0),
    );
  }
}

import 'package:flutter/material.dart';
import '../../global_config.dart';

class CommonHeader {
  static AppBar commonTitleHeader(BuildContext context, String title) {
    return new AppBar(
      title: new Text(title,
          style: new TextStyle(
              color:
                  GlobalConfig.dark == true ? Colors.white70 : Colors.black)),
      backgroundColor: Colors.white,
      leading: new IconButton(
        icon: new Icon(Icons.arrow_back, color: GlobalConfig.fontColor),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

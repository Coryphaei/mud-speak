import 'package:flutter/material.dart';

class GlobalConfig {
  static bool dark = false;
  static ThemeData themeData = new ThemeData.light();
  static Color searchBackgroundColor = new Color(0xFFDADDE2);
  static Color cardBackgroundColor = new Color(0xFF222222);
  static Color fontColor = new Color(0xFF092143);
  static Color commonColor = Colors.white;

  static String url = "localhost:8080";

  static bool debug = true;

  static String TOKEN_KEY = "accessToken";
}
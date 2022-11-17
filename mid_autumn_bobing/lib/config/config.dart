import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mid_autumn_bobing/pages/chat/chat_pages/chat_page.dart';
import 'package:mid_autumn_bobing/pages/dice/dice_pages/dice_page.dart';
import 'package:mid_autumn_bobing/pages/login/login_pages/create_room_page.dart';
import 'package:mid_autumn_bobing/pages/login/login_pages/online_login_page.dart';
import 'package:mid_autumn_bobing/pages/login/login_pages/choose_login_page.dart';

//Bobing route
class Broute {
  //参数
  static const String choose_login = "/choose_login";
  static const String online_login_page = "/online_login_page";
  static const String create_room_page = "/create_room_page";
  static const String dice_page = "/dice_page";
  static const String chat_page = "/chat_page";

  //路由
  static final List<GetPage> getPages = [
    GetPage(name: choose_login, page: () => ChooseLoginPage()),
    GetPage(name: online_login_page, page: () => OnlineLoginPage()),
    GetPage(name: create_room_page, page: () => CreateRoomPage()),
    GetPage(name: dice_page, page: () => DicePage()),
    GetPage(name: chat_page, page: () => ChatPage(title: "8484"))
  ];
}

//Bobing colors 颜色
class Bcolors {
  static const int _ThemeColor = 0xFF3F51B5;
  static const Color ThemeColor = Color(_ThemeColor);
  static const MaterialColor ThemeSwatchColor = MaterialColor(
    _ThemeColor,
    <int, Color>{
      50: Color(0xFFE8EAF6),
      100: Color(0xFFC5CAE9),
      200: Color(0xFF9FA8DA),
      300: Color(0xFF7986CB),
      400: Color(0xFF5C6BC0),
      500: Color(_ThemeColor),
      600: Color(0xFF3949AB),
      700: Color(0xFF303F9F),
      800: Color(0xFF283593),
      900: Color(0xFF1A237E),
    },
  );
}

//Bobing icons 图标
class Bicons {
  //dice 色子
  static const IconData dice1 = IconData(0xe63f, fontFamily: "BIcons");
  static const IconData dice2 = IconData(0xe63e, fontFamily: "BIcons");
  static const IconData dice3 = IconData(0xe63d, fontFamily: "BIcons");
  static const IconData dice4 = IconData(0xe642, fontFamily: "BIcons");
  static const IconData dice5 = IconData(0xe641, fontFamily: "BIcons");
  static const IconData dice6 = IconData(0xe640, fontFamily: "BIcons");

  static const List<IconData> dice = <IconData>[
    dice1,
    dice2,
    dice3,
    dice4,
    dice5,
    dice6,
  ];
}

import 'package:flutter/material.dart';
import 'package:mid_autumn_bobing/config/config.dart';
import 'package:mid_autumn_bobing/pages/login/login_views/login_logo.dart';
import 'package:mid_autumn_bobing/pages/login/login_views/online_login_sheet.dart';

class OnlineLoginPage extends StatefulWidget {
  OnlineLoginPage({Key? key}) : super(key: key);

  @override
  State<OnlineLoginPage> createState() => _OnlineLoginPageState();
}

class _OnlineLoginPageState extends State<OnlineLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Bcolors.ThemeColor,
      body: Stack(
        children: [
          logo,
          online_login_sheet(),
        ],
      ),
    );
  }
}

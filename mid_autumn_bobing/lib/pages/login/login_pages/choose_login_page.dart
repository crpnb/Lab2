import 'package:flutter/material.dart';
import 'package:mid_autumn_bobing/config/config.dart';
import 'package:mid_autumn_bobing/pages/login/login_views/button_sheet.dart';
import 'package:mid_autumn_bobing/pages/login/login_views/login_logo.dart';

class ChooseLoginPage extends StatefulWidget {
  ChooseLoginPage({Key? key}) : super(key: key);

  @override
  State<ChooseLoginPage> createState() => _ChooseLoginPageState();
}

class _ChooseLoginPageState extends State<ChooseLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Bcolors.ThemeColor,
      body: Stack(
        children: [
          logo,
          buttonsheet(),
        ],
      ),
    );
  }
}

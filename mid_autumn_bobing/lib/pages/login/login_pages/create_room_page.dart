import 'package:flutter/material.dart';
import 'package:mid_autumn_bobing/config/config.dart';
import 'package:mid_autumn_bobing/pages/login/login_views/create_room_sheet.dart';
import 'package:mid_autumn_bobing/pages/login/login_views/login_logo.dart';

class CreateRoomPage extends StatefulWidget {
  CreateRoomPage({Key? key}) : super(key: key);

  @override
  State<CreateRoomPage> createState() => _CreateRoomPageState();
}

class _CreateRoomPageState extends State<CreateRoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Bcolors.ThemeColor,
      body: Stack(
        children: [
          logo,
          create_room_sheet(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mid_autumn_bobing/config/config.dart';
import 'package:mid_autumn_bobing/pages/login/login_views/choose_button.dart';
import 'package:mid_autumn_bobing/pages/login/login_views/login_textfield.dart';

class online_login_sheet extends StatefulWidget {
  online_login_sheet({Key? key}) : super(key: key);

  @override
  State<online_login_sheet> createState() => _online_login_sheetState();
}

class _online_login_sheetState extends State<online_login_sheet> {
  @override
  Widget build(BuildContext context) {
    //room_number
    TextEditingController room_number_controller = TextEditingController();
    FocusNode room_number_focusNode = FocusNode();

    //name
    TextEditingController name_controller = TextEditingController();
    FocusNode name_focusNode = FocusNode();

    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: Get.width,
          height: 480,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(180),
                  topRight: Radius.circular(180)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, blurRadius: 30, spreadRadius: 5)
              ]),
          child: Stack(
            children: [
              login_textfield(
                text: "Room",
                alignment: Alignment(0, -0.5),
                controller: room_number_controller,
                focusNode: room_number_focusNode,
              ),
              login_textfield(
                text: "Name",
                alignment: Alignment.center,
                controller: name_controller,
                focusNode: name_focusNode,
              ),
              choose_button(
                text: "Login",
                alignment: Alignment(0, 0.7),
                onPressed: () {
                  Get.toNamed(Broute.chat_page);
                },
              )
            ],
          ),
        ));
  }
}

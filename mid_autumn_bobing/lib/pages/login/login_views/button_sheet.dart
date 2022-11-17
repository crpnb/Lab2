import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mid_autumn_bobing/config/config.dart';
import 'package:mid_autumn_bobing/pages/login/login_views/choose_button.dart';

class buttonsheet extends Align {
  buttonsheet()
      : super(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: Get.width,
              height: 341,
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
                  choose_button(
                    text: "Online Player",
                    alignment: Alignment(0, -0.5),
                    onPressed: () {
                      Get.toNamed(Broute.online_login_page);
                    },
                  ),
                  choose_button(
                    text: "Single Player",
                    alignment: Alignment(0, 0.3),
                    onPressed: () {
                      Get.toNamed(Broute.dice_page);
                    },
                  ),
                  Align(
                    alignment: Alignment(0.9, 0.9),
                    child: TextButton(
                      child: Text(
                        "No Rooms？",
                        style: TextStyle(
                          color: Bcolors.ThemeColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Get.toNamed(Broute.create_room_page);
                      },
                    ),
                  )
                ],
              ),
            ));
}

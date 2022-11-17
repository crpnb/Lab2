import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mid_autumn_bobing/config/config.dart';

class login_textfield extends Align {
  String text;
  Alignment alignment;
  TextEditingController controller;
  FocusNode focusNode;

  login_textfield({
    required this.text,
    required this.alignment,
    required this.controller,
    required this.focusNode,
  }) : super(
          alignment: alignment,
          child: Container(
            width: 200,
            height: 58,
            child: TextFormField(
              controller: controller,
              focusNode: focusNode,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: text,
                hintStyle: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Bcolors.ThemeColor,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Bcolors.ThemeColor,
                    width: 4,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Bcolors.ThemeColor,
                    width: 4,
                  ),
                ),
              ),
            ),
          ),
        );
}

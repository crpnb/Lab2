import 'package:flutter/material.dart';
import 'package:mid_autumn_bobing/config/config.dart';

class choose_button extends Align {
  String text;
  Alignment alignment;
  void Function()? onPressed;
  choose_button(
      {required this.text, required this.alignment, required this.onPressed})
      : super(
            alignment: alignment,
            child: ElevatedButton(
              onPressed: onPressed,
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Bcolors.ThemeColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  fixedSize: MaterialStateProperty.all(Size(201, 67))),
            ));
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mid_autumn_bobing/pages/dice/dice_provider/nums_provide.dart';
import 'package:sensors_plus/sensors_plus.dart';

class RandomButton extends StatefulWidget {
  RandomButton({Key? key}) : super(key: key);

  @override
  State<RandomButton> createState() => _RandomButtonState();
}

class _RandomButtonState extends State<RandomButton> {
  final c = Get.put(DiceNums());

  @override
  void initState() {
    super.initState();

    //摇一摇
    int acceleration = 20;
    accelerometerEvents.listen((AccelerometerEvent event) async {
      if (event.x.abs() > acceleration ||
          event.y.abs() > acceleration ||
          event.z.abs() > acceleration) {
        c.get_randem_number();
        HapticFeedback.heavyImpact();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        c.get_randem_number();
        HapticFeedback.heavyImpact();
      },
      icon: Icon(
        Icons.code,
        color: Colors.white,
      ),
      iconSize: 125,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mid_autumn_bobing/config/config.dart';
import 'package:mid_autumn_bobing/pages/dice/dice_provider/nums_provide.dart';

class DicesNumView extends Icon {
  int num;

  DicesNumView({required this.num})
      : super(
          Bicons.dice[num],
          color: Colors.white,
          size: Get.width * 1 / 3,
        );
}

Widget get_dice_view(BuildContext context, int index) {
  var dice_data = Get.put(DiceNums());

  return Obx(() => DicesNumView(num: dice_data.dice_nums[index]));
}

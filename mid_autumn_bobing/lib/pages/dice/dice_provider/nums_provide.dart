import 'dart:math';
import 'package:get/get.dart';

class DiceNums extends GetxController {
  List<int> dice_nums = [3, 3, 3, 3, 1, 1].obs;

  get_randem_number() {
    Random r = new Random();
    for (var i = 0; i < dice_nums.length; i++) {
      dice_nums[i] = r.nextInt(6);
    }
    update();
  }
}

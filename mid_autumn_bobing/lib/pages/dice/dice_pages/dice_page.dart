import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mid_autumn_bobing/config/config.dart';
import 'package:mid_autumn_bobing/pages/dice/dice_provider/nums_provide.dart';
import 'package:mid_autumn_bobing/pages/dice/dice_views/dices_num_view.dart';
import 'package:mid_autumn_bobing/pages/dice/dice_views/random_button.dart';

class DicePage extends StatefulWidget {
  DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Bcolors.ThemeColor,
        body: Column(
          children: [
            Container(
              height: Get.height * 3 / 4,
              width: Get.width,
              child: GridView.builder(
                itemCount: 6,
                itemBuilder: get_dice_view,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  childAspectRatio: 1.0,
                ),
              ),
            ),

            //重掷色子
            RandomButton(),
          ],
        ));
  }
}

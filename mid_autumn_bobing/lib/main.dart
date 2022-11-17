import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:mid_autumn_bobing/config/config.dart';

void main() {
  if (GetPlatform.isAndroid) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Bcolors.ThemeSwatchColor,
      ),
      debugShowCheckedModeBanner: false,
      getPages: Broute.getPages,
      initialRoute: Broute.choose_login,
    );
  }
}

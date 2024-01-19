import 'package:doto_app_test/app/core/config/color.dart';
import 'package:doto_app_test/app/core/utils/int_extensions.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
          image: DecorationImage(
               colorFilter: ColorFilter.mode(
            kPrimaryColor, // Change this color to the desired color
              BlendMode.overlay,
            ),
              fit: BoxFit.cover,
              image: AssetImage('assets/images/welcome_bg.png'))),
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        ElevatedButton(
          onPressed: () {
            controller.onGetStared();
          },
          child: const Center(child: Text("Get stared")),
        ),
        100.height,
      ]),
    ));
  }
}

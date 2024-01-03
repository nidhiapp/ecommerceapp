import 'package:ecommerce/utils/app_images.dart';
import 'package:ecommerce/utils/app_texts.dart';
import 'package:ecommerce/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Lottie.asset(AppImages.splashScreenImg),
        Text(AppTexts.vibeMart,style: AppStyle.latoEightFourtyPurple,)
      ]),
    );
  }
}
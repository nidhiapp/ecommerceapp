import 'package:ecommerce/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyle.latoFiveTwentyFiveAmber,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:device_preview_demo/ui/colors.dart';
import 'package:device_preview_demo/ui/constants.dart';

class HomeBackground extends StatelessWidget {
  const HomeBackground();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: AppColors.blue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: kTopBarHeight),
          Expanded(
              child:
              Image.asset('assets/images/home_bg.png', fit: BoxFit.fill)),
        ],
      ),
    );
  }
}

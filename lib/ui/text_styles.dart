import 'package:flutter/material.dart';

extension TextStyles on BuildContext {
  TextStyle? get appTitle => Theme.of(this).textTheme.headline6?.copyWith(
      fontFamily: '.SF UI Display',
      color: Colors.white,
      fontWeight: FontWeight.w400);

  TextStyle? get rowTitleTextStyle =>
      Theme.of(this).textTheme.headline6?.copyWith(
          color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16);

  TextStyle? get bodyTextStyle => Theme.of(this).textTheme.bodyText1?.copyWith(
      fontFamily: 'DMSans',
      color: Colors.white,
      fontWeight: FontWeight.w400,
      height: 1.4,
      fontSize: 16);

  TextStyle? get sectionTitleStyle =>
      Theme.of(this).textTheme.headline6?.copyWith(
          color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18);
}

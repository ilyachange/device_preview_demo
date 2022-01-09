import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:device_preview_demo/ui/colors.dart';
import 'package:device_preview_demo/ui/constants.dart';
import 'package:device_preview_demo/ui/text_styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: kTopBarHeight,
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: AppColors.blue.withOpacity(0.9),
              child: Column(
                children: const [
                  FakeNavBar(),
                  Expanded(child: SizedBox.shrink()),
                  TabSelector(),
                ],
              ),
            ),
          ),
        ));
  }
}

class FakeNavBar extends StatelessWidget {
  const FakeNavBar();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.all_inclusive, color: Colors.white),
            const SizedBox(width: 8),
            Text('DevicePreviewDemo', style: context.appTitle),
            const Expanded(child: SizedBox.shrink()),
            Icon(Icons.account_circle_outlined, color: AppColors.lightBlue),
          ],
        ));
  }
}

class TabSelector extends StatefulWidget {
  const TabSelector();

  @override
  State<TabSelector> createState() => _TabSelectorState();
}

class _TabSelectorState extends State<TabSelector> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => setState(() => _selectedTab = 0),
              child: Text('Explore',
                  style: _textStyle(context, _selectedTab == 0)),
            ),
            const SizedBox(width: 20),
            GestureDetector(
              onTap: () => setState(() => _selectedTab = 1),
              child:
                  Text('Watch', style: _textStyle(context, _selectedTab == 1)),
            ),
          ],
        ));
  }

  TextStyle? _textStyle(BuildContext context, bool isSelected) {
    return isSelected
        ? Theme.of(context)
            .textTheme
            .headline4
            ?.copyWith(color: Colors.white, fontWeight: FontWeight.w700)
        : Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: AppColors.lightBlue, fontWeight: FontWeight.w700);
  }
}

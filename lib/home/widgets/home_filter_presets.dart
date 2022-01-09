import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:device_preview_demo/ui/colors.dart';

class PresetSection extends StatelessWidget {
  final _firstRowItems = const [
    'Gainers',
    'Recently Added',
    'Market Cap',
    'Shopping',
    'Internet',
    'Utilities',
    'Chinese Stocks'
  ];
  final _secondRowItems = const [
    'High Earners',
    'Losers',
    'Healthcare',
    'Finance',
    'Energy',
    'Pharma',
    'Global',
    'UK Stocks'
  ];
  final _thirdRowItems = const [
    'Transport',
    'Big Employers',
    'Most Active',
    'Manufactorung',
    'Communications',
    'European Stocks',
    'Dividend Yield'
  ];

  const PresetSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            scrollDirection: Axis.horizontal,
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: _firstRowItems.map((e) => PresetItem(e)).toList(),
              ),
              Row(
                children: _secondRowItems.map((e) => PresetItem(e)).toList(),
              ),
              Row(
                children: _thirdRowItems.map((e) => PresetItem(e)).toList(),
              ),
            ])));
  }
}

class PresetItem extends StatelessWidget {
  final String _title;

  const PresetItem(this._title);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 6, 6),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: ClipRect(
                child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: Container(
                      color: AppColors.lightBlue.withOpacity(0.2),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                          child: Row(children: [
                            Icon(Icons.all_inclusive,
                                size: 16, color: AppColors.pink),
                            const SizedBox(width: 6),
                            Text(
                              _title,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                  fontFamily: 'DMSans',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12),
                            )
                          ])),
                    )))));
  }
}

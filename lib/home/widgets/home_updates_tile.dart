import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:device_preview_demo/ui/colors.dart';
import 'package:device_preview_demo/ui/text_styles.dart';
import 'package:device_preview_demo/widgets/stock_icon.dart';

class UpdatesTile extends StatelessWidget {
  const UpdatesTile();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 24),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  color: AppColors.lightBlue.withOpacity(0.2),
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(48, 16, 16, 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const StockIcon('assets/images/tesla.jpeg',
                                  isSmall: true),
                              const SizedBox(width: 16),
                              Text('Tesla', style: context.rowTitleTextStyle),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Tesla shares are trading lower. Not seeing company-specific news from the session.',
                            style: context.bodyTextStyle,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'a day ago',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.copyWith(
                                    fontFamily: 'DMSans',
                                    color: AppColors.lightBlue,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12),
                          ),
                        ],
                      )),
                ),
              ),
            )));
  }
}

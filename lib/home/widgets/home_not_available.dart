import 'package:flutter/material.dart';
import 'package:device_preview_demo/ui/colors.dart';
import 'package:device_preview_demo/ui/text_styles.dart';

class CountryNotAvailableSection extends StatelessWidget {
  const CountryNotAvailableSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(12, 24, 12, 12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Container(
              color: AppColors.lightBlue.withOpacity(0.2),
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 30, 24, 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'DevicePreviewDemo hasn\'t made it to Estonia yet',
                        style: context.sectionTitleStyle,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Although we\'re not quite ready for you yet, you can look around and let your friends know about Lightyear.',
                        style: context.bodyTextStyle?.copyWith(color: AppColors.lightBlue),
                      )
                    ],
                  ))),
        ));
  }
}

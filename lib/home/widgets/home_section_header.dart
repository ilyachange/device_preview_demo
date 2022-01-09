import 'package:flutter/material.dart';
import 'package:device_preview_demo/ui/colors.dart';
import 'package:device_preview_demo/ui/text_styles.dart';

class SectionTitle extends StatelessWidget {
  final IconData _iconData;
  final String _title;

  const SectionTitle(this._iconData, this._title);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(12, 24, 12, 8),
        child: Row(
          children: [
            Icon(_iconData, color: AppColors.lightBlue),
            const SizedBox(width: 16),
            Text(_title,
                style: context.sectionTitleStyle
                    ?.copyWith(color: AppColors.lightBlue))
          ],
        ));
  }
}

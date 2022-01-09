import 'package:flutter/material.dart';
import 'package:device_preview_demo/ui/text_styles.dart';
import 'package:device_preview_demo/widgets/stock_icon.dart';

class StockRow extends StatelessWidget {
  final String _stockTitle;
  final String _stockSymbol;
  final String _resourceName;

  const StockRow(this._stockTitle, this._stockSymbol, this._resourceName);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
        child: Row(
          children: [
            StockIcon(_resourceName),
            const SizedBox(width: 12),
            Text(_stockTitle, style: context.rowTitleTextStyle),
            const Expanded(child: SizedBox.shrink()),
            Text(_stockSymbol, style: context.rowTitleTextStyle),
          ],
        ));
  }
}

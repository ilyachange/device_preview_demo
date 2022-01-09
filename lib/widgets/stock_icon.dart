import 'package:flutter/material.dart';

class StockIcon extends StatelessWidget {
  final String _resourceName;
  final bool _isSmall;

  const StockIcon(this._resourceName, {isSmall = false}) : _isSmall = isSmall;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: _isSmall ? 32 : 40,
        height: _isSmall ? 32 : 40,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
              color: Colors.white,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: Image.asset(_resourceName),
                  ))),
        ));
  }
}

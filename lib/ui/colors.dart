import 'package:flutter/material.dart';

class AppColors {
  static Color get blue => _HexColor.fromHex('ff243382');

  static Color get lightBlue => _HexColor.fromHex('ff98a1ef');

  static Color get darkBlue => _HexColor.fromHex('ff0b185c');

  static Color get pink => _HexColor.fromHex('ffffded2');
}

extension _HexColor on Color {
  // aarrggbb, - ff243382
  static Color fromHex(String hexString) {
    return Color(int.parse(hexString, radix: 16));
  }
}

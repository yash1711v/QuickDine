import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color amber5009b = fromHex('#9bfbbb04');

  static Color green900 = fromHex('#106f1a');

  static Color whiteA70051 = fromHex('#51ffffff');

  static Color green500 = fromHex('#4ac356');

  static Color amber50070 = fromHex('#70fbbb04');

  static Color blueGray1005b = fromHex('#5bd9d9d9');

  static Color black90089 = fromHex('#89000000');

  static Color blueGray1001c = fromHex('#1cd9d9d9');

  static Color black90007 = fromHex('#07000000');

  static Color blueGray1001e = fromHex('#1ed9d9d9');

  static Color black90005 = fromHex('#05000000');

  static Color black9004c = fromHex('#4c000000');

  static Color green90091 = fromHex('#91106f1a');

  static Color gray400 = fromHex('#bebebe');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color black9008c = fromHex('#8c000000');

  static Color amber500 = fromHex('#fbbc05');

  static Color orange80001 = fromHex('#d97213');

  static Color black9008e = fromHex('#8e000000');

  static Color orange800 = fromHex('#f36a05');

  static Color black9000f = fromHex('#0f000000');

  static Color black9000c = fromHex('#0c000000');

  static Color gray40001 = fromHex('#c4c4c4');

  static Color bluegray400 = fromHex('#888888');

  static Color black90096 = fromHex('#96000000');

  static Color black90019 = fromHex('#19000000');

  static Color gray40044 = fromHex('#44bebebe');

  static Color black90014 = fromHex('#14000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black90016 = fromHex('#16000000');

  static Color gray5007a = fromHex('#7aaca6a6');

  static Color black9005e = fromHex('#5e000000');

  static Color black900D1 = fromHex('#d1000000');

  static Color blueGray10089 = fromHex('#89d9d9d9');

  static Color red500 = fromHex('#ea4335');

  static Color amber50042 = fromHex('#42fbbb04');

  static Color blueGray10007 = fromHex('#07d9d9d9');

  static Color black9001c = fromHex('#1c000000');

  static Color red50 = fromHex('#fff1f1');

  static Color green900A3 = fromHex('#a3106f1a');

  static Color whiteA70033 = fromHex('#33ffffff');

  static Color black90023 = fromHex('#23000000');

  static Color whiteA70075 = fromHex('#75ffffff');

  static Color blueGray1003a = fromHex('#3ad9d9d9');

  static Color black900 = fromHex('#000000');

  static Color gray40035 = fromHex('#35bebebe');

  static Color blueGray1003d = fromHex('#3dd9d9d9');

  static Color black900Fc = fromHex('#fc000000');

  static Color redA400 = fromHex('#fd1c23');

  static Color black9009b = fromHex('#9b000000');

  static Color purple400 = fromHex('#9334de');

  static Color black90026 = fromHex('#26000000');

  static Color black900A0 = fromHex('#a0000000');

  static Color gray500 = fromHex('#aca6a6');

  static Color gray900 = fromHex('#1b1b1b');

  static Color amber50035 = fromHex('#35fbbb04');

  static Color gray4005b = fromHex('#5bbebebe');

  static Color black900A8 = fromHex('#a8000000');

  static Color amber200 = fromHex('#fde291');

  static Color black900A5 = fromHex('#a5000000');

  static Color black90075 = fromHex('#75000000');

  static Color black900Cc = fromHex('#cc000000');

  static Color black90072 = fromHex('#72000000');

  static Color blueGray1000f = fromHex('#0fd9d9d9');

  static Color black900Ce = fromHex('#ce000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

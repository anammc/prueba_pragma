import 'package:flutter/material.dart';
import 'package:prueba_pragma/styles/theme.dart';

class CustomTheme implements ThemeStructure {
  @override
  final colors = const ColorsTheme(
      darkBlue: Color(0xff3f51b5),
      lightBlue: Color(0xff03a9f4),
      white: Color(0xffffffff),
      black: Color(0xff000000));
}

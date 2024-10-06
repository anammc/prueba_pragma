import 'package:flutter/material.dart';
import 'package:prueba_pragma/styles/custom_theme.dart';

class TextFieldStyle{

  static InputDecoration withIcon({
    String labelText = "",
    Widget? icon,
    Widget? leftIcon,
    Color? colorInput,
  }) {
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 15),
      filled: true,
      counterText: "",
      fillColor: Colors.transparent,
      focusColor: colorInput ?? CustomTheme().colors.darkPurple,
      hoverColor: colorInput ?? CustomTheme().colors.darkPurple,
      suffixIcon: icon,
      prefixIcon: leftIcon,
      labelText: labelText,
      labelStyle: TextStyle(
        color: colorInput,
        fontWeight: FontWeight.w700,
        fontSize: 16,
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: colorInput ?? CustomTheme().colors.darkPurple),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: colorInput ?? CustomTheme().colors.darkPurple),
      ),
    );
  }
}
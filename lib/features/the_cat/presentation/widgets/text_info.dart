import 'package:flutter/material.dart';
import 'package:prueba_pragma/styles/font_styles.dart';

class TextInfo extends StatelessWidget {
  final String info;
  const TextInfo({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8.0,
        ),
        Text(
          info,
          style: FontStyles.subTitle()
        ),
      ],
    );
  }
}
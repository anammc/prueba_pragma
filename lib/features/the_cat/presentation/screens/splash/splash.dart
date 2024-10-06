import 'package:flutter/material.dart';
import 'package:prueba_pragma/features/the_cat/presentation/screens/home/home.dart';
import 'package:prueba_pragma/services/redirect_service.dart';
import 'package:prueba_pragma/styles/custom_theme.dart';
import 'package:prueba_pragma/styles/font_styles.dart';
import 'dart:async';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    Timer(const Duration(seconds: 1), () {
      RedirectService.replaceAllPages(context, HomeScreen());
    });
    return Scaffold(
      backgroundColor: CustomTheme().colors.darkPurple,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "CATBREEDS",
              textAlign: TextAlign.center,
              style: FontStyles.title(colorText: CustomTheme().colors.white, fontSize: 40.0),
            ),
            Image.asset(
              "assets/images/cats.gif",
              width: size.width * 0.68,
            ),
          ],
        ),
      ),
    );
  }
}
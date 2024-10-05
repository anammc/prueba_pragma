import 'package:flutter/material.dart';
import 'package:prueba_pragma/styles/custom_theme.dart';
import 'package:prueba_pragma/styles/font_styles.dart';

class CardCat extends StatelessWidget{
  const CardCat({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: CustomTheme().colors.black, width: 1.0),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'nombre',
                  style: FontStyles.title()
                ),
                Text(
                  'Más...',
                  style: FontStyles.title(colorText: CustomTheme().colors.darkBlue),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.network(
                      'https://img.freepik.com/vector-gratis/personaje-dibujos-animados-gatito-ojos-dulces_1308-135596.jpg',
                      fit: BoxFit.cover,
                      height: 350.0,
                      width: double.infinity,
                    ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'origen',
                  style: FontStyles.subTitle(),
                ),
                Text(
                  'temperamento',
                  style: FontStyles.subTitle(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
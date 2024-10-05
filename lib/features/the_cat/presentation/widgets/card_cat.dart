import 'package:flutter/material.dart';
import 'package:prueba_pragma/features/the_cat/domain/entities/breed.dart';
import 'package:prueba_pragma/features/the_cat/presentation/screens/detail_cat/detail_cat.dart';
import 'package:prueba_pragma/services/redirect_service.dart';
import 'package:prueba_pragma/styles/custom_theme.dart';
import 'package:prueba_pragma/styles/font_styles.dart';

class CardCat extends StatelessWidget {
  final Breed? breed;

  const CardCat({super.key, required this.breed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        RedirectService.goTo(context, const DetailCat());
      },
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
                Text(breed?.name ?? "", style: FontStyles.title()),
                Text(
                  'Más...',
                  style: FontStyles.title(
                      colorText: CustomTheme().colors.darkBlue),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: imageBred()
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

  Widget imageBred() {
    if (breed?.images?.isEmpty ?? true) {
      return const CircularProgressIndicator();
    }
    return Image.network(
      breed?.images?[0].url ?? "",
      fit: BoxFit.cover,
      height: 350.0,
      width: double.infinity,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:prueba_pragma/common/text_field_style.dart';
import 'package:prueba_pragma/features/the_cat/presentation/widgets/card_cat.dart';
import 'package:prueba_pragma/styles/custom_theme.dart';
import 'package:prueba_pragma/styles/font_styles.dart';

class HomeBreeds extends StatelessWidget {

  HomeBreeds({super.key}) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomTheme().colors.lightBlue,
        leading: const SizedBox.shrink(),
        title: Text(
          "Catbreeds",
          textAlign: TextAlign.center,
          style: FontStyles.title(colorText: CustomTheme().colors.white),
        ),
      ),
      body: listBeerd(),
    );
  }

  Widget listBeerd() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0, top: 16.0),
          child: TextFormField(
            style: FontStyles.texto(),
            onChanged: (value) {},
            maxLines: 1,
            decoration: TextFieldStyle.withIcon(
              labelText: "Buscar",
              leftIcon: Icon(
                Icons.search,
                color: CustomTheme().colors.darkBlue,
              ),
            ),
            cursorColor: CustomTheme().colors.darkBlue,
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            shrinkWrap: true,
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 16.0,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return const CardCat();
            },
          ),
        ),
      ],
    );
  }
}
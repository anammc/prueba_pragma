import 'package:flutter/material.dart';
import 'package:prueba_pragma/features/the_cat/domain/entities/breed.dart';
import 'package:prueba_pragma/features/the_cat/presentation/widgets/text_info.dart';
import 'package:prueba_pragma/services/redirect_service.dart';
import 'package:prueba_pragma/styles/custom_theme.dart';
import 'package:prueba_pragma/styles/font_styles.dart';

class DetailCat extends StatelessWidget {

   final Breed? breed;

  const DetailCat({super.key, required this.breed});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomTheme().colors.lightPurple,
        leading: InkWell(
          onTap: () {
            RedirectService.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: CustomTheme().colors.white,
          ),
        ),
        title: Text(
          "${breed?.name}",
          textAlign: TextAlign.center,
          style: FontStyles.title(colorText: CustomTheme().colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                breed?.images?[0].url ?? "",
                fit: BoxFit.cover,
                width: size.width * 0.95,
                height: size.width * 0.95,
              ),
            ),
          ),
          Expanded(
              child: ListView(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
            children: [
              TextInfo(info: '${breed?.description ?? ""} '),
              TextInfo(info:'pais de origen : ${breed?.origin}'),
              TextInfo(info:'temperamento : ${breed?.temperament}'),
              TextInfo(info:'tiempo de vida : ${breed?.lifeSpan ?? ""}'),
              TextInfo(info:'adaptabilidad : ${breed?.adaptability}'),
              TextInfo(info:'nivel de afecto : ${breed?.affectionLevel}'),
              TextInfo(info:'apto para niños : ${breed?.childFriendly}'),
              TextInfo(info:'apto para perros : ${breed?.dogFriendly}'),
              TextInfo(info:'nivel de energía : ${breed?.energyLevel}'),
              TextInfo(info:'cuestiones sanitarias : ${breed?.healthIssues}'),
              TextInfo(info:'inteligencia : ${breed?.intelligence}'),
              TextInfo(info:'necesidades sociales : ${breed?.socialNeeds}'),
            ],
          ))
        ],
      ),
    );
  }

}
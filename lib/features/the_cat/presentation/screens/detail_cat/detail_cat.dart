import 'package:flutter/material.dart';
import 'package:prueba_pragma/features/the_cat/presentation/widgets/text_info.dart';
import 'package:prueba_pragma/services/redirect_service.dart';
import 'package:prueba_pragma/styles/custom_theme.dart';
import 'package:prueba_pragma/styles/font_styles.dart';

class DetailCat extends StatelessWidget {

  const DetailCat({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomTheme().colors.lightBlue,
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
          "nombre",
          textAlign: TextAlign.center,
          style: FontStyles.title(colorText: CustomTheme().colors.darkBlue),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.network(
              'https://img.freepik.com/vector-gratis/personaje-dibujos-animados-gatito-ojos-dulces_1308-135596.jpg',
              fit: BoxFit.cover,
              width: size.width * 0.95,
              height: size.width * 0.95,
            ),
          ),
          Expanded(
              child: ListView(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
            children: const [
              TextInfo(info: "descripcion"),
              TextInfo(info:'pais de origen :'),
              TextInfo(info:'temperamento : '),
              TextInfo(info:'tiempo de vida : '),
              TextInfo(info:'adaptabilidad : '),
              TextInfo(info:'nivel de afecto : '),
              TextInfo(info:'apto para niños : '),
              TextInfo(info:'apto para perros : '),
              TextInfo(info:'nivel de energía : '),
              TextInfo(info:'cuestiones sanitarias : '),
              TextInfo(info:'inteligencia : '),
              TextInfo(info:'nivel de desprendimiento : '),
              TextInfo(info:'necesidades sociales : ')
            ],
          ))
        ],
      ),
    );
  }

}
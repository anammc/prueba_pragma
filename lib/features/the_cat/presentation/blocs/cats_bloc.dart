import 'package:prueba_pragma/features/the_cat/domain/entities/breed.dart';
import 'package:prueba_pragma/features/the_cat/domain/entities/breed_list.dart';
import 'package:prueba_pragma/features/the_cat/domain/use_cases/get_list_cats.dart';
import 'package:prueba_pragma/features/the_cat/domain/use_cases/search_images.dart';
import 'package:rxdart/rxdart.dart';

class CatsBloc {
  BehaviorSubject<BreedList> catsController = BehaviorSubject<BreedList>();
  Stream<BreedList?> get listCardStream => catsController.stream;
  final GetListCatsUseCase getListCatsUseCase;
  final SearchImageUseCase searchImagesUseCase;

  ///TODO: este de cambia a un modelo de datos para la ui
  late BreedList breedList;

  getInitCats() async {
    final result = await getListCatsUseCase();
    result.fold(
      (error) {},
      (data) {
        breedList = data;
        catsController.sink.add(data);
        _getImagesBreedById();
      },
    );
  }

  _getImagesBreedById() async {
    for (var i = 0; i < breedList.cats!.length; i++) {
      searchImagesUseCase(breedList.cats![i].id ?? "").then((response) {
        response.fold(
          (err) {},
          (data) {
            breedList.cats![i].images = data.images;
            catsController.sink.add(breedList);
          },
        );
        //filterBreedsByText(filterText);
      });
    }
  }

  CatsBloc(
      {required this.getListCatsUseCase, required this.searchImagesUseCase}) {
    getInitCats();
  }

  disponse() {
    catsController.close();
  }
}

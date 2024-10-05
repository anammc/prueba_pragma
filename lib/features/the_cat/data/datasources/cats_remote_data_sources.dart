import 'package:dio/dio.dart';
import 'package:prueba_pragma/features/the_cat/data/models/breed_list_model.dart';
import 'package:prueba_pragma/features/the_cat/data/models/images_list_model.dart';

abstract class CatsRemoteDataSourse {
  Future<ImagesListModel> getImages(String id);
  Future<BreedListModel> getCats();

}

class CatsRemoteDataSourseImp implements CatsRemoteDataSourse {
  final Dio dio = Dio();
  @override
  Future<BreedListModel> getCats() async {
    final resp = await dio.get(
      'https://api.thecatapi.com/v1/breeds',
      queryParameters: {
        'api_key':
            'live_99Qe4Ppj34NdplyLW67xCV7Ds0oSLKGgcWWYnSzMJY9C0QOu0HUR4azYxWky W2n'
      },
    );
    return BreedListModel.fromJson(resp.data);
  }

  @override
  Future<ImagesListModel> getImages(String id) async {
    final resp = await dio.get(
      'https://api.thecatapi.com/v1/images/search?breed_ids=$id',
      queryParameters: {
        'api_key':
            'live_99Qe4Ppj34NdplyLW67xCV7Ds0oSLKGgcWWYnSzMJY9C0QOu0HUR4azYxWky W2n'
      },
    );
    return ImagesListModel.fromJson(resp.data);
  }
}

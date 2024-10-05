import 'package:dio/dio.dart';
import 'package:prueba_pragma/features/the_cat/data/models/breed_model.dart';
import 'package:prueba_pragma/features/the_cat/data/models/image_model.dart';

abstract class CatsRemoteDataSourse {
  Future<ImagesModel> getImages(String id);
  Future<BreedModel> getCats();

}

class CatsRemoteDataSourseImp implements CatsRemoteDataSourse {
  final Dio dio = Dio();
  @override
  Future<BreedModel> getCats() async {
    final resp = await dio.get(
      'https://api.thecatapi.com/v1/breeds',
      queryParameters: {
        'api_key':
            'live_99Qe4Ppj34NdplyLW67xCV7Ds0oSLKGgcWWYnSzMJY9C0QOu0HUR4azYxWky W2n'
      },
    );
    return BreedModel.fromJson(resp.data);
  }

  @override
  Future<ImagesModel> getImages(String id) async {
    final resp = await dio.get(
      'https://api.thecatapi.com/v1/images/search?breed_ids=$id',
      queryParameters: {
        'api_key':
            'live_99Qe4Ppj34NdplyLW67xCV7Ds0oSLKGgcWWYnSzMJY9C0QOu0HUR4azYxWky W2n'
      },
    );
    return ImagesModel.fromJson(resp.data);
  }
}

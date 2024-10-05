import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:prueba_pragma/core/error/features.dart';
import 'package:prueba_pragma/features/the_cat/data/datasources/cats_remote_data_sources.dart';
import 'package:prueba_pragma/features/the_cat/domain/entities/breed_list.dart';
import 'package:prueba_pragma/features/the_cat/domain/entities/images_list.dart';
import 'package:prueba_pragma/features/the_cat/domain/repositories/cats_repository.dart';

class CatsRepositoryImpl implements CatsRepository {
  final CatsRemoteDataSourse catsRemoteDataSourse;

  CatsRepositoryImpl({
    required this.catsRemoteDataSourse});

  @override
  Future<Either<Failure, BreedList>> getListCats() async {
    try{
      final BreedList resp = await catsRemoteDataSourse.getCats();
      return Right(resp);
    }on DioException{
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, ImagesList>> getImageById(String id) async {
    try{
      final ImagesList resp = await catsRemoteDataSourse.getImages(id);
      return Right(resp);
    }on DioException{
      return Left(ServerFailure());
    }
  }
  

}
import 'package:dartz/dartz.dart';
import 'package:prueba_pragma/core/error/features.dart';
import 'package:prueba_pragma/features/the_cat/domain/entities/breed.dart';
import 'package:prueba_pragma/features/the_cat/domain/entities/images.dart';

abstract class CatsRepository{
  Future<Either<Failure, Images>> getImageById(String id);
  Future<Either<Failure, Breed>> getListCats();
}
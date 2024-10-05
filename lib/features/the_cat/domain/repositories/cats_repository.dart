import 'package:dartz/dartz.dart';
import 'package:prueba_pragma/core/error/features.dart';
import 'package:prueba_pragma/features/the_cat/domain/entities/breed_list.dart';
import 'package:prueba_pragma/features/the_cat/domain/entities/images_list.dart';

abstract class CatsRepository{
  Future<Either<Failure, ImagesList>> getImageById(String id);
  Future<Either<Failure, BreedList>> getListCats();
}
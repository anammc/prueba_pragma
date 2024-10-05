import 'package:dartz/dartz.dart';
import 'package:prueba_pragma/core/error/features.dart';
import 'package:prueba_pragma/features/the_cat/domain/entities/images.dart';
import 'package:prueba_pragma/features/the_cat/domain/repositories/cats_repository.dart';

class SearchImageUseCase{
  final CatsRepository repository;

  SearchImageUseCase({required this.repository});

  Future<Either<Failure, Images>> call(String id){
    return repository.getImageById(id);
  }
}
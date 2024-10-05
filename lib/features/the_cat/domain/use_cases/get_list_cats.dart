import 'package:dartz/dartz.dart';
import 'package:prueba_pragma/core/error/features.dart';
import 'package:prueba_pragma/features/the_cat/domain/entities/breed.dart';
import 'package:prueba_pragma/features/the_cat/domain/repositories/cats_repository.dart';


class GetListCatsUseCase{
  final CatsRepository repository;

  GetListCatsUseCase({required this.repository});

  Future<Either<Failure, Breed>> call(){
    return repository.getListCats();
  }
}
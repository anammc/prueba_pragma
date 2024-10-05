import 'package:dartz/dartz.dart';
import 'package:prueba_pragma/core/error/features.dart';
import 'package:prueba_pragma/features/the_cat/domain/entities/breed_list.dart';
import 'package:prueba_pragma/features/the_cat/domain/repositories/cats_repository.dart';


class GetListCatsUseCase{
  final CatsRepository repository;

  GetListCatsUseCase({required this.repository});

  Future<Either<Failure, BreedList>> call(){
    return repository.getListCats();
  }
}
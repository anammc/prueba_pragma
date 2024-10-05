import 'package:get_it/get_it.dart';
import 'package:prueba_pragma/features/the_cat/data/datasources/cats_remote_data_sources.dart';
import 'package:prueba_pragma/features/the_cat/data/repositories/cats_repository_impl.dart';
import 'package:prueba_pragma/features/the_cat/domain/repositories/cats_repository.dart';
import 'package:prueba_pragma/features/the_cat/domain/use_cases/get_list_cats.dart';
import 'package:prueba_pragma/features/the_cat/domain/use_cases/search_images.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  // sl.registerFactory(() => ListCardBloc(getListCardsUseCase: sl()));
  // sl.registerFactory(() => MagicCardBloc(searchCardUseCase: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetListCatsUseCase(repository: sl()));
  sl.registerLazySingleton(() => SearchImageUseCase(repository: sl()));

  // Repository
  sl.registerLazySingleton<CatsRepository>(
    () => CatsRepositoryImpl(
      catsRemoteDataSourse: sl(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<CatsRemoteDataSourse>(
    () => CatsRemoteDataSourseImp(),
  );
}

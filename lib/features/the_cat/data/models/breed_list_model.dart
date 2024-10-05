import 'package:prueba_pragma/features/the_cat/data/models/breed_model.dart';
import 'package:prueba_pragma/features/the_cat/domain/entities/breed_list.dart';

class BreedListModel extends BreedList{
  BreedListModel({required super.cats});

  factory BreedListModel.fromJson(List<dynamic> json){
    
    return BreedListModel(
      cats: json.isEmpty ? [] : List.from((json).map((card) => BreedModel.fromJson(card)))
    );
  }

  Map<String,dynamic> toJson(){
    return {
      'cats':cats
    };
  }

  factory BreedListModel.fromEntity(BreedList list){
    return BreedListModel(cats: list.cats);
  }

}
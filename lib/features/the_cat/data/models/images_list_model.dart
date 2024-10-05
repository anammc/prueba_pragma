import 'package:prueba_pragma/features/the_cat/data/models/image_model.dart';
import 'package:prueba_pragma/features/the_cat/domain/entities/images_list.dart';

class ImagesListModel extends ImagesList{
  ImagesListModel({required super.images});

  factory ImagesListModel.fromJson(List<dynamic> json){
    
    return ImagesListModel(
      images: json.isEmpty ? [] : List.from((json).map((card) => ImagesModel.fromJson(card)))
    );
  }

  Map<String,dynamic> toJson(){
    return {
      'images':images
    };
  }

  factory ImagesListModel.fromEntity(ImagesList list){
    return ImagesListModel(images: list.images);
  }

}
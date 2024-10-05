import 'package:prueba_pragma/features/the_cat/domain/entities/images.dart';

class ImagesModel extends Images {
  ImagesModel(
      {required super.id,
      required super.url,
      required super.width,
      required super.height});

  factory ImagesModel.fromJson(json) {
    return ImagesModel(
        id: json['id'],
        url: json['url'],
        width: json['width'],
        height: json['height']);
  }

  Map<String, dynamic> toJson() =>
      {'id': id, 'url': url, 'width': width, 'height': height};

  factory ImagesModel.fromEntity(Images images) {
    return ImagesModel(
        id: images.id,
        url: images.url,
        width: images.width,
        height: images.height);
  }
}

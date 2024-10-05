import 'package:prueba_pragma/features/the_cat/domain/entities/weight.dart';

class WeightModel extends Weight {

  WeightModel({required super.imperial, required super.metric});

  factory WeightModel.fromJson(json){
    return WeightModel(imperial: json['imperial'], metric: json['metric']);
  }

  Map<String, dynamic> toJson() => {'imperial': imperial, 'metric': metric};

  factory WeightModel.fromEntity(Weight weight){
    return WeightModel(imperial: weight.imperial, metric: weight.metric);
  }
}

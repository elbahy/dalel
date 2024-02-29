import 'package:dalel/core/models/data_list_model.dart';
import 'package:dalel/core/utils/app_firebase_strings.dart';

class WarsModel extends DataListModel {
  WarsModel(
      {required super.name,
      required super.imageUrl,
      required super.description});

  factory WarsModel.fromJson(jsonData) {
    return WarsModel(
        name: jsonData[AppFirebaseStrings.name],
        imageUrl: jsonData[AppFirebaseStrings.imageUrl],
        description: jsonData[AppFirebaseStrings.description]);
  }
}

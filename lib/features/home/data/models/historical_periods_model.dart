import 'package:dalel/core/models/data_list_model.dart';
import 'package:dalel/core/utils/app_firebase_strings.dart';

class HistoricalPeriodsModel extends DataListModel {
  HistoricalPeriodsModel(
      {required super.name,
      required super.imageUrl,
      required super.description});

  factory HistoricalPeriodsModel.fromJson(jsonData) {
    return HistoricalPeriodsModel(
        name: jsonData[AppFirebaseStrings.name],
        imageUrl: jsonData[AppFirebaseStrings.imageUrl],
        description: jsonData[AppFirebaseStrings.description]);
  }
}

import 'package:dalel/core/models/data_list_model.dart';
import 'package:dalel/core/utils/app_firebase_strings.dart';

class HistoricalPeriodWarsModel extends DataListModel {
  HistoricalPeriodWarsModel(
      {required super.name,
      required super.imageUrl,
      required super.description});

  factory HistoricalPeriodWarsModel.fromJson(jsonData) {
    return HistoricalPeriodWarsModel(
        name: jsonData[AppFirebaseStrings.name],
        imageUrl: jsonData[AppFirebaseStrings.imageUrl],
        description: jsonData[AppFirebaseStrings.description]);
  }
}

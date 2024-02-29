import 'package:dalel/core/models/data_list_model.dart';
import 'package:dalel/core/utils/app_firebase_strings.dart';
import 'package:dalel/features/home/data/models/historical_period_wars_model.dart';

class HistoricalPeriodsModel extends DataListModel {
  HistoricalPeriodsModel(
      {required this.wars,
      required super.name,
      required super.imageUrl,
      required super.description});

  final List<HistoricalPeriodWarsModel> wars;

  factory HistoricalPeriodsModel.fromJson(jsonData, warsList) {
    return HistoricalPeriodsModel(
        name: jsonData[AppFirebaseStrings.name],
        imageUrl: jsonData[AppFirebaseStrings.imageUrl],
        description: jsonData[AppFirebaseStrings.description],
        wars: warsList);
  }
}

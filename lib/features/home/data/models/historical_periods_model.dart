import 'package:dalel/core/utils/app_firebase_strings.dart';

class HistoricalPeriodsModel {
  final String name;
  final String imageUrl;
  final String description;

  HistoricalPeriodsModel(
      {required this.name, required this.imageUrl, required this.description});

  factory HistoricalPeriodsModel.fromJson(jsonData) {
    return HistoricalPeriodsModel(
        name: jsonData[AppFirebaseStrings.name],
        imageUrl: jsonData[AppFirebaseStrings.imageUrl],
        description: jsonData[AppFirebaseStrings.description]);
  }
}

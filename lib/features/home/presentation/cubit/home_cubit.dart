import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/core/utils/app_firebase_strings.dart';
import 'package:dalel/features/home/data/models/historical_period_wars_model.dart';
import 'package:dalel/features/home/data/models/historical_periods_model.dart';
import 'package:dalel/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  List<HistoricalPeriodsModel> historicalPeriodsList = [];

  getHistoricalPeriods() async {
    emit(GetHistoricalPeriodsLoading());
    try {
      await FirebaseFirestore.instance
          .collection(AppFirebaseStrings.historicalPeriods)
          .get()
          .then((value) async {
        for (var element in value.docs) {
          List<WarsModel> warsList = [];
          await getHistoricalPeriodWars(element, warsList);
          historicalPeriodsList
              .add(HistoricalPeriodsModel.fromJson(element.data(), warsList));
        }
        emit(GetHistoricalPeriodsSuccess());
      });
    } on Exception catch (e) {
      emit(GetHistoricalPeriodsError(errorMessage: e.toString()));
    }
  }

  getHistoricalPeriodWars(QueryDocumentSnapshot<Map<String, dynamic>> element,
      List<WarsModel> warsList) async {
    await FirebaseFirestore.instance
        .collection(AppFirebaseStrings.historicalPeriods)
        .doc(element.id)
        .collection(AppFirebaseStrings.wars)
        .get()
        .then((value) => {
              for (var element in value.docs)
                {warsList.add(WarsModel.fromJson(element.data()))}
            });
  }
}

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/core/utils/app_firebase_strings.dart';
import 'package:dalel/features/home/data/models/historical_periods_model.dart';
import 'package:dalel/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  List<HistoricalPeriodsModel> historicalPeriods = [];

  getHistoricalPeriods() async {
    emit(GetHistoricalPeriodsLoading());
    try {
      await FirebaseFirestore.instance
          .collection(AppFirebaseStrings.historicalPeriods)
          .get()
          .then((value) {
        for (var element in value.docs) {
          historicalPeriods
              .add(HistoricalPeriodsModel.fromJson(element.data()));
        }
      });
      emit(GetHistoricalPeriodsSuccess());
    } on Exception catch (e) {
      emit(GetHistoricalPeriodsError(errorMessage: e.toString()));
    }
  }
}

abstract class HomeState {}

final class HomeInitial extends HomeState {}

final class GetHistoricalPeriodsLoading extends HomeState {}

final class GetHistoricalPeriodsSuccess extends HomeState {}

final class GetHistoricalPeriodsError extends HomeState {
  final String errorMessage;

  GetHistoricalPeriodsError({required this.errorMessage});
}

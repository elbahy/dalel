import 'package:dalel/core/databases/cache/cache_helper.dart';
import 'package:dalel/core/services/service_locator.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: 'onBoardingIsVisited', value: true);
}
